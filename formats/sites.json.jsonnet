local experiments = import 'experiments.jsonnet';
local sites = import 'sites.jsonnet';
[
  site {
    nodes: [
      local m = site.machine(mIndex);
      m {
        name: m.hostname(),
        experiments: [
          local e = site.experiment(mIndex, experiment);
          e {
            name: e.hostname(),
          }
          for experiment in experiments
        ],
      }
      for mIndex in std.range(1, site.machines.count)
    ],
  }
  for site in sites
]
