local experiments = import 'experiments.jsonnet';
local sites = import 'sites.jsonnet';

[
  site {
    nodes: [
      local m = site.Machine(machine);
      m {
        hostname: m.Hostname(),
        experiments: [
          local e = site.Experiment(machine, experiment);
          if e != null then
            e {
              hostname: e.Hostname(),
            }
          else
            {}
          for experiment in experiments
        ],
      }
      for machine in std.objectFields(site.machines)
    ],
  }
  for site in sites
]
