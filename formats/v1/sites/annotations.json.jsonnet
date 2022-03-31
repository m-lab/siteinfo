// NOTE: this format is not compatible with virtual sites, and anything
// consuming the output should only be considered to work reliably for physical
// sites. Virtual sites have a network configuration on a per-machine basis.
// Anything consuming this deprecated format should migrate to the v2 version,
// which returns one object per machine, not per site. This format is intended
// to work for early virtual sites and physical sites, allowing M-Lab time to
// migrate any consumer to the v2 version.
local sites = if std.extVar('retired') then import 'retired.jsonnet' else import 'sites.jsonnet';
// Early virtual sites only allowed a single machine, usually mlab1. This small
// function checks that the mlab1 machine exists, and if so, returns the network
// config for that machine, else it returns the network config for the first
// machine it finds. Physical sites ignore the value generated by this site.
local getMachine(site) = (
  if std.objectHas(site.machines, 'mlab1') then
    'mlab1'
  else
    std.objectFields(site.machines)[0]
);
local parseASN(asn) = (
  if std.length(asn) > 2 then
    std.parseInt(std.substr(asn, 2, std.length(asn) - 2))
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
      IPv4: site.NetworkCIDR('v4', getMachine(site)),
      IPv6: site.NetworkCIDR('v6', getMachine(site)),
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
              asn,
            ],
          },
        ],
      },
    },
  }
  for site in sites
]
