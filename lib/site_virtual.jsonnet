local version = std.extVar('version');

{
  // Returns the appropriate base domain depending on the node project for v2
  // outputs, else just the standard base domain.
  BaseDomain(m):: (
    local domainMap = {
      'mlab-sandbox': 'mlab-sandbox.measurement-lab.org',
      'mlab-staging': 'mlab-staging.measurement-lab.org',
      'mlab-oti': 'mlab-oti.measurement-lab.org',
    };
    if version == 'v2' then
      '%s' % domainMap[$.machines['mlab' + m].project]
    else
      'measurement-lab.org'
  ),
  // Extracts the integer machine index from the string machine name m.
  MachineIndex(m):: (
    local i = std.parseInt(std.substr(m, 4, 1));
    i
  ),
  // Virtual sites do not have prefixes. Instead, each machine has it's own
  // specific network configuration. This functions just return an empty string
  // for both IPv4 and IPv6 formats that assume every site has a prefix.
  NetworkPrefix(proto):: '',
  // Machine returns a network spec for virtual machine m.
  Machine(m):: {
    local i = $.MachineIndex(m),
    local v4addr = $.machines['mlab' + i].network.ipv4.address,
    local v6addr = $.machines['mlab' + i].network.ipv6.address,
    index: i,
    project: $.machines['mlab' + i].project,
    v4: {
      ip: std.split($.machines['mlab' + i].network.ipv4.address, '/')[0],
    },
    v6: {
      ip: (
        if v6addr == null then '' else (
          std.split($.machines['mlab' + i].network.ipv6.address, '/')[0]
        )
      ),
    },
    // Returns the network configuration for machine m.
    Network():: {
      Network: {
        IPv4: v4addr,
        IPv6: if v6addr != null then v6addr else '',
      },
    },
    // Record returns a machine name suitable for a zone record including the
    // decoration if given.
    Record(decoration=''):: (
      if version == 'v1' then
        'mlab%s%s.%s' % [i, decoration, $.name]
      else
        'mlab%s%s-%s' % [i, decoration, $.name]
    ),
    // Hostname returns a machine FQDN including the decoration, if given.
    Hostname(decoration=''):: '%s.%s' % [self.Record(decoration), $.BaseDomain(i)],
  },
  // Experiment returns a network spec for the given experiment config on
  // machine m.
  Experiment(m, expConfig):: if expConfig.cloud_enabled then expConfig {
    local i = $.MachineIndex(m),
    local v4addr = $.machines['mlab' + i].network.ipv4.address,
    local v6addr = $.machines['mlab' + i].network.ipv6.address,
    v4: {
      ip: std.split($.machines['mlab' + i].network.ipv4.address, '/')[0],
    },
    v6: {
      ip: (
        if v6addr == null then '' else (
          std.split($.machines['mlab' + i].network.ipv6.address, '/')[0]
        )
      ),
    },
    hostname: self.Hostname(),
    // Record returns a machine name suitable for a zone record including the
    // decoration if given.
    Record(decoration=''):: (
      // For v1 zones we include dotted and dashed/flat hostnames. For anything
      // later than v1 we only include dashed/flat names.
      if version == 'v1' then
        '%s.mlab%d%s.%s' % [expConfig.name, i, decoration, $.name]
      else
        '%s-mlab%d%s-%s' % [std.strReplace(expConfig.name, '.', '-'), i, decoration, $.name]
    ),
    // Hostname returns a machine FQDN including the decoration, if given.
    Hostname(decoration=''):: '%s.%s' % [self.Record(decoration), $.BaseDomain(i)],
  },
}
