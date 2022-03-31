local experiments = import 'experiments.jsonnet';
local sites = import 'sites.jsonnet';

[
  {
    local m = site.Machine(machine),
    hostname: m.Hostname(),
    ipv4: m.v4.ip,
    ipv6: m.v6.ip,
  }
  for site in sites
  for machine in std.objectFields(site.machines)
] + [
  {
    local e = site.Experiment(machine, experiment),
    hostname: e.Hostname(),
    ipv4: e.v4.ip,
    ipv6: e.v6.ip,
  }
  for site in sites
  for machine in std.objectFields(site.machines)
  for experiment in experiments
  if (site.annotations.type == 'physical' || experiment.cloud_enabled == true)
]
