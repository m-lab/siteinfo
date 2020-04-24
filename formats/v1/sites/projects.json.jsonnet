local experiments = import 'experiments.jsonnet';
local sites = import 'sites.jsonnet';
[
  site {
    local m = site.Machine(mIndex);
    m {
        project: m.project,
    }
    for mIndex in std.range(1, std.length(site.machines))
  }
  for site in sites
]
