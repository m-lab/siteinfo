{
  // Returns the appropriate base domain depending on the node project for v2
  // outputs, else just the standard base domain.
  BaseDomain(m):: (
    local domainMap = {
      'mlab-sandbox': 'mlab-sandbox.measurement-lab.org',
      'mlab-staging': 'mlab-staging.measurement-lab.org',
      'mlab-oti': 'mlab-oti.measurement-lab.org',
    };
    if std.extVar('version') == 'v2' then
      '%s' % domainMap[$.machines['mlab' + m].project]
    else
      'measurement-lab.org'
  ),
  // Switch returns a network spec for the site switch.
  Switch():: {
    v4: {
      ip: $.Index4(2),
    },
    Record():: 's1.%s' % $.name,
    Hostname():: '%s.measurement-lab.org' % self.Record(),
  },
  // DRAC returns a network spec for the drac attached to machine index m.
  DRAC(m):: {
    v4: {
      ip: (
        if m >= 1 && m <= 4 then
          $.Index4(m + 3)
        else
          error 'Machine indexes must be within range [1,4]'
      ),
    },
    Record():: (
      if std.extVar('version') == 'v1' then
        'mlab%dd.%s' % [m, $.name]
      else
        'mlab%dd-%s' % [m, $.name]
    ),
    Hostname():: '%s.%s' % [self.Record(), $.BaseDomain(m)],
  },
  // Machine returns a network spec for machine index m. The decoration
  // parameter may be used to decorate the machine record and hostname.
  Machine(m):: {
    local v4net = $.network.ipv4.prefix,
    local v6net = $.network.ipv6.prefix,
    index: m,
    project: $.machines['mlab' + m].project,
    v4: if v4net != null then {
      ip: (
        if $.annotations.type == 'physical' then (
          if m >= 1 && m <= 4 then
            $.Index4(((m - 1) * 13) + 9)
          else
            error 'Machine indexes must be within range [1,4]'
        ) else (
          if m == 1 then
            /* the IP is the machine. */
            $.Index4(0)
          else
            error 'Machine indexes for single-machine sites must be 1'
        )
      ),
      dns1: $.network.ipv4.dns1,
      dns2: $.network.ipv4.dns2,
      network: v4net,
      netmask: $._v4_netmask($._net_subnet(v4net)),
      subnet: $._net_subnet(v4net),
      gateway: $.Index4(1),
      broadcast: $.Index4(63),
    } else {
      ip: '',
    },
    v6: if v6net != null then {
      ip: $.Index6(((m - 1) * 13) + 9),
      dns1: $.network.ipv6.dns1,
      dns2: $.network.ipv6.dns2,
      network: v6net,
      subnet: $._net_subnet(v6net),
      gateway: $.Gateway6(),
    } else {
      ip: '',
    },
    // Record returns a machine name suitable for a zone record including the
    // decoration if given.
    Record(decoration=''):: (
      if std.extVar('version') == 'v1' then
        'mlab%d%s.%s' % [m, decoration, $.name]
      else
        'mlab%d%s-%s' % [m, decoration, $.name]
    ),
    // Hostname returns a machine FQDN including the decoration, if given.
    Hostname(decoration=''):: '%s.%s' % [self.Record(decoration), $.BaseDomain(m)],
  },
  // Experiment returns a network spec for the given experiment config on machine
  // index m.
  Experiment(m, expConfig):: expConfig {
    local v4net = $.network.ipv4.prefix,
    local v6net = $.network.ipv6.prefix,
    v4: {
      ip: (
        if v4net == null then '' else (
          if $.annotations.type == 'physical' then
            $.Index4(((m - 1) * 13) + 9 + expConfig.index)
          else
            /* the IP is the experiment. */
            $.Index4(0)
        )
      ),
    },
    v6: {
      ip: (
        if v6net == null then '' else
          $.Index6(((m - 1) * 13) + 9 + expConfig.index)
      ),
    },
    // Record returns a machine name suitable for a zone record including the
    // decoration if given.
    Record(decoration=''):: (
      // For v1 zones we include dotted and dashed/flat hostnames. For anything
      // later than v1 we only include dashed/flat names.
      if std.extVar('version') == 'v1' then
        '%s.mlab%d%s.%s' % [expConfig.name, m, decoration, $.name]
      else
        '%s-mlab%d%s-%s' % [std.strReplace(expConfig.name, '.', '-'), m, decoration, $.name]
    ),
    // Hostname returns a machine FQDN including the decoration, if given.
    Hostname(decoration=''):: '%s.%s' % [self.Record(decoration), $.BaseDomain(m)],
  },

  // Index4 returns the i-th IPv4 address in the site's ipv4 network.
  Index4(i):: (
    local v4net = $.network.ipv4.prefix;
    if v4net == null then '' else
      $._v4_net_prefix(v4net) + '.%d' % [$._v4_net_offset(v4net) + i]
  ),
  // Index6 returns the i-th IPv6 address in the site's ipv6 network.
  Index6(i):: (
    local v6net = $.network.ipv6.prefix;
    local v4off = $._v4_net_offset($.network.ipv4.prefix);
    if v6net == null then '' else
      '%s%d' % [std.split(v6net, '/')[0], v4off + i]
  ),
  // gateway6
  Gateway6():: (
    local v6net = $.network.ipv6.prefix;
    if v6net == null then '' else (
      if std.objectHas($.network.ipv6, 'gateway') then
        $.network.ipv6.gateway
      else
        '%s1' % [std.split(v6net, '/')[0]]
    )
  ),

  // Extract the last octet as an integer.
  _v4_net_offset(net):: std.parseInt(std.split(std.split(net, '/')[0], '.')[3]),
  // Extract the first three octets as a string.
  _v4_net_prefix(net):: (
    local octets = std.split(std.split(net, '/')[0], '.');
    std.join('.', [octets[0], octets[1], octets[2]])
  ),
  // Extract the subnet.
  _net_subnet(net):: std.parseInt(std.split(net, '/')[1]),
  // Calculate netmask.
  _v4_netmask(subnet):: (
    local hexmask = (std.pow(2, 32) - std.pow(2, 32 - subnet));
    '%d.%d.%d.%d' % [
      (hexmask >> 24),
      (hexmask >> 16) & 255,
      (hexmask >> 8) & 255,
      (hexmask) & 255,
    ]
  ),
}
