local experiments = import 'experiments.jsonnet';
local sites = if std.extVar('retired') then import 'retired.jsonnet' else import 'sites.jsonnet';

[
  site {
    nodes: [
      local m = site.Machine(machine);
      local expCount = site.ExperimentCount();
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

