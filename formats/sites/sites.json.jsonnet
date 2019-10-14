local experiments = import 'experiments.jsonnet';
local sites = import 'sites.jsonnet';
[
  site {
    nodes: [
      local m = site.Machine(mIndex);
      local d = site.DRAC(mIndex);
      m {
        hostname: m.Hostname(),
        drac: d + {
          hostname: d.Hostname()
        },
        experiments: [
          local e = site.Experiment(mIndex, experiment);
          e {
            hostname: e.Hostname(),
          }
          for experiment in experiments
        ],
      }
      for mIndex in std.range(1, site.machines.count)
    ],
  }
  for site in sites
]
