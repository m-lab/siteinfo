local sites = import 'sites.jsonnet';
local parseASN(asn) = (
  if std.length(asn) > 2 then
    std.parseInt(std.substr(asn, 2, std.length(asn)-2))
  else
    0
);
[
  {
    // NOTE: the uuid-annotator uses camel case in exported JSON, so the
    // following object keys are capitalized accordingly.
    Name: site.name,
    // Network allows identifying individual connection CIDR values.
    Network: {
      IPv4: site.network.ipv4.prefix,
      IPv6: if site.network.ipv6.prefix != null then site.network.ipv6.prefix else "",
    },
    Annotation: {
      local loc = site.location,
      local transit = site.transit,
      Site: site.name,
      // Machine: field will be filled in by the uuid-annotator.
      Geo: {
        ContinentCode: loc.continent_code,
        CountryCode: loc.country_code,
        Latitude: loc.latitude,
        Longitude: loc.longitude,
        City: loc.city,
        State: loc.state,
      },
      Network: {
        local asn = parseASN(transit.asn),
        ASNumber: asn,
        ASName: transit.provider,
        Systems: [
          {
            ASNs: [
              asn
            ]
          }
        ]
      }
    },
  },
  for site in sites
]
