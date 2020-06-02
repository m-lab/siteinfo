local experiments = import 'experiments.jsonnet';
local sites = import 'sites.jsonnet';
[
    [m.Hostname()] {
      project: m.project,
    }

  for site in sites
  for mIndex in std.range(1, std.length(site.machines))
  for m in site.Machine(mIndex)
]
