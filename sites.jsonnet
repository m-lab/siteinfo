local sites = {
  lga0t: import 'sites/lga0t.jsonnet',
  tyo01: import 'sites/tyo01.jsonnet',
};
[
  local site = sites[name];
  if site.name == name then
    site
  else
    error 'Site name (%s) does not match object.name (%s)' % [name, site.name]
  for name in std.objectFields(sites)
]
