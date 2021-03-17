local experiments = import 'experiments.jsonnet';
local siteSource = {
  sites: import 'sites.jsonnet',
  retired: import 'retired-sites.jsonnet',
};
[
  {
    local m = site.Machine(mIndex),
    hostname: m.Hostname(),
    ipv4: m.v4.ip,
    ipv6: m.v6.ip,
  }
  for site in siteSource[std.extVar('sitesource')]
  for mIndex in std.range(1, std.length(site.machines))
] + [
  {
    local e = site.Experiment(mIndex, experiment),
    hostname: e.Hostname(),
    ipv4: e.v4.ip,
    ipv6: e.v6.ip,
  }
  for site in siteSource[std.extVar('sitesource')]
  for mIndex in std.range(1, std.length(site.machines))
  for experiment in experiments
  if (site.annotations.type == 'physical' || experiment.cloud_enabled == true)
]
