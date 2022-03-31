local sites = import 'sites.jsonnet';

[
  {
    local m = site.Machine(machine),
    hostname: m.Hostname(),
    ipv4: m.v4.ip,
    ipv6: m.v6.ip,
    project: site.Machine(machine).project,
    type: site.annotations.type,
  }
  for site in sites
  for machine in std.objectFields(site.machines)
]
