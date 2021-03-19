local sites = import 'sites.jsonnet';

[
  {
    local location = site.location,
    city: location.city,
    metro: [
      site.name,
      location.metro,
    ],
    country: location.country_code,
    site: site.name,
    longitude: location.longitude,
    latitude: location.latitude,
    roundrobin: site.loadbalancer.roundrobin,
    uplink_speed: site.transit.uplink,
  }
  for site in sites
]
