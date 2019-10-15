local experiments = import 'experiments.jsonnet';
local sites = import 'sites.jsonnet';

local migrated = {
  "den06": std.range(1, 4),
  "del01": std.range(1, 4),
  "vie01": [1],
};

// NOTE: Add a nonce to the hostname so that md5 includes mlab3.lga03 and
// mlab3.lax02 - already upgraded during 10th anniversary.
local hashHostKey = function(x) std.substr(std.md5(x.hostname + 'nonce0'), 30, 2);

std.sort(
  std.flattenArrays([
    [
      {
        local m = site.Machine(1),
        hostname: m.Hostname(),
        ipv4: m.v4.ip,
        ipv6: m.v6.ip,
      }
    ]
    for site in sites
    if (site.annotations.type == 'physical')
    if !std.objectHas(migrated, site.name)
  ])

  +

  std.flattenArrays([
    local s = [
      {
        local m = site.Machine(mIndex),
        hostname: m.Hostname(),
        ipv4: m.v4.ip,
        ipv6: m.v6.ip,
      }
      for mIndex in migrated[site.name]
    ];
    s
    for site in sites
    if std.objectHas(migrated, site.name)
  ])
, function(x) x.hostname)

