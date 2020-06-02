local experiments = import 'experiments.jsonnet';
local sites = import 'sites.jsonnet';
{
  [site.Machine().Hostname()]: site.Machine().project
  for site in sites
  for mIndex in std.range(1, std.length(site.machines))
}
