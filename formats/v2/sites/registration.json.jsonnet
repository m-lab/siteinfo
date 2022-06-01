local experiments = import 'experiments.jsonnet';
local sites = import 'sites.jsonnet';

[
  {
    local loc = site.location,
    local m = site.Machine(machine),
    local e = site.Experiment(machine, experiment),
    city: loc.city,
    country_code: loc.country_code,
    continent_code: loc.continent_code,
    experiment: experiment.name,
    latitude: loc.latitude,
    longitude: loc.longitude,
    machine: machine,
    type: site.annotations.type,
    metro: loc.metro,
    project: m.project,
    site: site.name,
    hostname: e.Hostname(),
    uplink: site.transit.uplink,
  }
  for site in sites
  for machine in std.objectFields(site.machines)
  for experiment in experiments
  if (site.Experiment(machine, experiment) != null)
]
