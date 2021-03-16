local siteSource = {
  sites: import 'sites.jsonnet',
  retired: import 'retired-sites.jsonnet',
};
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
        ipv4_prefix: site.network.ipv4.prefix,
        ipv6_prefix: site.network.ipv6.prefix,
      },
    }
    for site in siteSource[std.extVar('sitesource')]
  ],
}
