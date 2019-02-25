local sites = import 'sites.jsonnet';
[
  {
    local location = sites[name].location,
    city: location.city,
    metro: [
      name,
      location.metro,
    ],
    country: location.country_code,
    site: name,
    longitude: location.longitude,
    latitude: location.latitude,
    roundrobin: sites[name].loadbalancer.roundrobin,
  }
  for name in std.objectFields(sites)
]
