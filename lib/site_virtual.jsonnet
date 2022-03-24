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
  // Returns the network address for the specified machine and protocol. The
  // 'machine' parameter defaults to 'mlab1' to accommodate formats that assume
  // that all machines are physical, where network prefixes only exist at the
  // site level, not the machine level. Early virtual sites only supported a
  // single node. Defaulting to mlab1 will allow old formats (e.g.,
  // v1/sites/annotations.json.jsonnet) to support early virtual sites where
  // only a single node existed. Additionally, there is a sanity check that
  // mlab1 exists, and if it does not exist it will use the first machine
  // defined in $.machines, to accommodate the case where the virtual site has
  // some other machine, e.g., mlab4.
  // TODO(kinkade): once all v1 formats are retired, remove the default of
  // 'mlab1' for the machine parameter such that it is required.
  NetworkPrefix(proto, machine='mlab1'):: (
    local m = if std.isObject($.machines[machine]) then machine else $.machines[0];
    local v4net = $.machines[m].network.ipv4.address;
    local v6net = $.machines[m].network.ipv6.address;
    if proto == 'v6' then
      if v6net != null then v6net else ''
    else
      v4net
  ),
  // Machine returns a network spec for virtual machine m. The decoration
  // parameter may be used to decorate the machine record and hostname.
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
