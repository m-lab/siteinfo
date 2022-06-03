local experiments = import 'experiments.jsonnet';
local sites = import 'sites.jsonnet';

[
  {
    local loc = site.location,
    local m = site.Machine(machine),
    local e = site.Experiment(machine, experiment),
    City: loc.city,
    CountryCode: loc.country_code,
    ContinentCode: loc.continent_code,
    Latitude: loc.latitude,
    Longitude: loc.longitude,
    Machine: machine,
    Type: site.annotations.type,
    Metro: loc.metro,
    Project: m.project,
    Site: site.name,
    Uplink: site.transit.uplink,
  }
  for site in sites
  for machine in std.objectFields(site.machines)
  for experiment in experiments
  if (site.Experiment(machine, experiment) != null)
]
