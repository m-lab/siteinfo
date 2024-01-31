local experiments = import 'experiments.jsonnet';
local sites = import 'sites.jsonnet';

[
  site {
    nodes: [
      local m = site.Machine(machine);
      // /26 sites support 12 experiments, while /28 sites only support 11.
      local expCount = if std.endsWith(site.NetworkCIDR('v4', machine), '26') then 12 else 11;
      m {
        hostname: m.Hostname(),
        experiments: std.prune([
          site.Experiment(machine, experiment)
          for experiment in experiments[:expCount]
        ]),
      }
      for machine in std.objectFields(site.machines)
    ],
  }
  for site in sites
]
