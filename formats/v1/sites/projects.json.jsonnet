local experiments = import 'experiments.jsonnet';
local sites = import 'sites.jsonnet';
{
  local m = site.Machine(),
  [m.Hostname()]: m.project
  for site in sites
  for mIndex in std.range(1, std.length(site.machines))
}
