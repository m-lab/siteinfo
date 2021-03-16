local siteSource = {
  sites: import 'sites.jsonnet',
  retired: import 'retired-sites.jsonnet',
};

{
  local project = site.Machine(mIndex).project,
  [site.Machine(mIndex).Record()]: project
  for site in siteSource[std.extVar('sitesource')]
  for mIndex in std.range(1, std.length(site.machines))
}
