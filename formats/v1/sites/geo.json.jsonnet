local sites = import 'sites.jsonnet';

{
  type: 'FeatureCollection',
  features: [
    {
      local location = site.location,
      type: 'Feature',
      geometry: {
        type: 'Point',
        coordinates: [location.longitude, location.latitude],
      },
      properties: {
        name: site.name,
        metro: location.metro,
        city: location.city,
        provider: site.transit.provider,
        uplink: site.transit.uplink,
        asn: site.transit.asn,
        ipv4_prefix: site.V4Prefix(),
        ipv6_prefix: site.V6Prefix(),
      },
    }
    for site in sites
  ],
}
