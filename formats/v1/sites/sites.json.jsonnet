local experiments = import 'experiments.jsonnet';
local sites = import 'sites.jsonnet';

[
  site {
    nodes: [
      local m = site.Machine(machine);
      m {
        hostname: m.Hostname(),
        experiments: std.prune([
          site.Experiment(machine, experiment)
          for experiment in experiments
        ]),
      }
      for machine in std.objectFields(site.machines)
    ],
  }
  for site in sites
]
