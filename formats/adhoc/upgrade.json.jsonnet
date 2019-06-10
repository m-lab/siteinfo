local experiments = import 'experiments.jsonnet';
local sites = import 'sites.jsonnet';
// NOTE: Add a nonce to the hostname so that md5 includes mlab3.lga03 and
// mlab3.lax02 - already upgraded during 10th anniversary.
local hashHostKey = function(x) std.substr(std.md5(x.hostname + 'nonce0'), 30, 2);
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
    s[0],
    // Once we wish to include mlab1s, report top 2 sites:
	// s[1],
  ]
  for site in sites
  if (site.annotations.type == 'physical')
])
