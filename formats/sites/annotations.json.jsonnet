local sites = import 'sites.jsonnet';
local parseASN(asn) = (
  if std.length(asn) > 2 then
    std.parseInt(std.substr(asn, 2, std.length(asn)-2))
  else
    0
);
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
      local asn = parseASN(transit.asn),
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
