local sites = import 'sites.jsonnet';
[
  {
    local loc = site.location,
    local transit = site.transit,
    Site: site.name,
    Geo: {
      "ContinentCode": loc.continent_code,
      "CountryCode": loc.country_code,
      "Latitude": loc.latitude,
      "Longitude": loc.longitude,
      "City": loc.city,
      "State": loc.state,
    },
    Network: {
      local asn = std.parseInt(std.substr(transit.asn, 2, std.length(transit.asn))),
      "ASNumber": asn,
      "ASName": transit.provider,
      "Systems": [
        {
          "ASNs": [
            asn
          ]
        }
      ]
    }
  }
  for site in sites
]
