local sites = if std.extVar('retired') then import 'retired.jsonnet' else import 'sites.jsonnet';
local parseASN(asn) = (
  if std.length(asn) > 2 then
    std.parseInt(std.substr(asn, 2, std.length(asn) - 2))
  else
    0
);
{
  [site.Machine(machine).Hostname()]: {
    // NOTE: the uuid-annotator uses camel case in exported JSON, so the
    // following object keys are capitalized accordingly.
    Type: site.annotations.type,
    // Network allows identifying individual connection CIDR values.
    Network: {
      IPv4: site.NetworkCIDR('v4', machine),
      IPv6: site.NetworkCIDR('v6', machine),
    },
    Annotation: {
      local loc = site.location,
      local transit = site.transit,
      Site: site.name,
      Machine: machine,
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
              asn,
            ],
          },
        ],
      },
    },
  }
  for site in sites
  for machine in std.objectFields(site.machines)
}
