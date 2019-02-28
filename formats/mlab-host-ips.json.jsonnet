local experiments = import 'experiments.jsonnet';
local sites = import 'sites.jsonnet';
[
  {
    local m = site.machine(mIndex),
    hostname: m.hostname(),
    ipv4: m.v4.ip,
    ipv6: m.v6.ip,
  }
  for site in sites
  for mIndex in std.range(1, site.machines.count)
] + [
  {
    local e = site.experiment(mIndex, experiment),
    hostname: e.hostname(),
    ipv4: e.v4.ip,
    ipv6: e.v6.ip,
  }
  for site in sites
  for mIndex in std.range(1, site.machines.count)
  for experiment in experiments
  if (site.annotations.type == 'physical' || experiment.cloud_enabled == true)
]
