local sites = import 'sites.jsonnet';

[
  {
    local m = site.Machine(mIndex),
    hostname: m.Hostname(),
    ipv4: m.v4.ip,
    ipv6: m.v6.ip,
    project: site.Machine(mIndex).project,
  }
  for site in sites
  for mIndex in std.range(1, std.length(site.machines))
]
