local experiments = import 'experiments.jsonnet';
local sites = import 'sites.jsonnet';

local migrated = {
  "arn06": std.range(1, 4),
  "del01": std.range(1, 4),
  "den06": std.range(1, 4),
  "fra05": std.range(1, 4),
  "gru01": std.range(1, 4),
  "gru02": std.range(1, 4),
  "gru03": std.range(1, 4),
  "gru04": std.range(1, 4),
  "hkg01": std.range(1, 4),
  "hnd03": std.range(1, 4),
  "lga08": [3],
  "maa01": std.range(1, 4),
  "maa02": std.range(1, 4),
  "trn02": std.range(1, 4),
  "vie01": [1],
};

// NOTE: Add a nonce to the hostname so that md5 includes mlab3.lga03 and
// mlab3.lax02 - already upgraded during 10th anniversary.
local hashHostKey = function(x) std.substr(std.md5(x.hostname + 'nonce0'), 30, 2);

std.sort(
  std.flattenArrays([
    local s = std.sort([
      {
        local m = site.Machine(mIndex),
        hostname: m.Hostname(),
        ipv4: m.v4.ip,
        ipv6: m.v6.ip,
      }
      // For now, only consier mlab2s and mlab3s.
      for mIndex in std.range(2, 3)
    ], hashHostKey);
    [
      s[1],
    ]
    for site in sites
    if (site.annotations.type == 'physical')
    if !std.objectHas(migrated, site.name)
  ])
, function(x) x.hostname)

