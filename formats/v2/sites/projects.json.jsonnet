local sites = import 'sites.jsonnet';

{
  local project = site.Machine(mIndex).project,
  [site.Machine(mIndex).Record()]: project
  for site in sites
  for mIndex in std.range(1, std.length(site.machines))
}
