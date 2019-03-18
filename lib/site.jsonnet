{
  // s1 returns a network spec for the site switch.
  s1():: {
    v4: {
      ip: $.index4(2),
    },
    record():: 's1.%s' % $.name,
    hostname():: '%s.measurement-lab.org' % self.record(),
  },
  // drac returns a network spec for the drac attached to machine index m.
  drac(m):: {
    v4: {
      ip: (
        if m >= 1 && m <= 4 then
          $.index4(m + 3)
        else
          error 'Machine indexes must be within range [1,4]'
      ),
    },
    record(): 'mlab%dd.%s' % [m, $.name],
    hostname(): '%s.measurement-lab.org' % self.record(),
  },
  // machine returns a network spec for machine index m. The decoration
  // parameter may be used to decorate the machine record and hostname.
  machine(m):: {
    local v4net = $.network.ipv4.prefix,
    local v6net = $.network.ipv6.prefix,
    index: m,
    v4: if v4net != null then {
      ip: (
        if $.annotations.type == 'physical' then (
          if m >= 1 && m <= 4 then
            $.index4(((m - 1) * 13) + 9)
          else
            error 'Machine indexes must be within range [1,4]'
        ) else (
          if m == 1 then
            /* the IP is the machine. */
            $.index4(0)
          else
            error 'Machine indexes for single-machine sites must be 1'
        )
      ),
      network: v4net,
      dns1: $.network.ipv4.dns1,
      dns2: $.network.ipv4.dns2,
      netmask: $._v4_netmask($._v4_net_subnet(v4net)),
      gateway: $.index4(1),
      broadcast: $.index4(63),
    } else {
      ip: '',
    },
    v6: if v6net != null then {
      ip: $.index6(((m - 1) * 13) + 9),
      dns1: $.network.ipv6.dns1,
      dns2: $.network.ipv6.dns2,
      network: v6net,
      gateway: $.gateway6(),
    } else {
      ip: '',
    },
    // record returns a machine name suitable for a zone record including the
    // decoration if given.
    record(decoration=''):: 'mlab%d%s.%s' % [m, decoration, $.name],
    // hostname returns a machine FQDN including the decoration, if given.
    hostname(decoration=''):: '%s.measurement-lab.org' % self.record(decoration),
  },
  // experiment returns a network spec for the given experiment config on machine
  // index m.
  experiment(m, expConfig):: expConfig {
    local v4net = $.network.ipv4.prefix,
    local v6net = $.network.ipv6.prefix,
    v4: {
      ip: (
        if v4net == null then '' else (
          if $.annotations.type == 'physical' then
            $.index4(((m - 1) * 13) + 9 + expConfig.index)
          else
            /* the IP is the experiment. */
            $.index4(0)
        )
      ),
    },
    v6: {
      ip: (
        if v6net == null then '' else
          $.index6(((m - 1) * 13) + 9 + expConfig.index)
      ),
    },
    // record returns a machine name suitable for a zone record including the
    // decoration if given.
    record(decoration=''):: '%s.mlab%d%s.%s' % [expConfig.name, m, decoration, $.name],
    // hostname returns a machine FQDN including the decoration, if given.
    hostname(decoration=''):: '%s.measurement-lab.org' % self.record(decoration),
  },

  // index4 returns the i-th IPv4 address in the site's ipv4 network.
  index4(i):: (
    local v4net = $.network.ipv4.prefix;
    if v4net == null then '' else
      $._v4_net_prefix(v4net) + '.%d' % [$._v4_net_offset(v4net) + i]
  ),
  // index6 returns the i-th IPv6 address in the site's ipv6 network.
  index6(i):: (
    local v6net = $.network.ipv6.prefix;
    local v4off = $._v4_net_offset($.network.ipv4.prefix);
    if v6net == null then '' else
      '%s%x' % [std.split(v6net, '/')[0], v4off + i]
  ),
  // gateway6
  gateway6():: (
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
  _v4_net_subnet(net):: std.parseInt(std.split(net, '/')[1]),
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
