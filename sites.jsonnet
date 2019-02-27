local sites = {
   lga0t: import 'sites/lga0t.jsonnet',
   tyo01: import 'sites/tyo01.jsonnet'
};
[
  if sites[name].name == name then
      sites[name]
  else
      error "Site name (%s) does not match object.name (%s)" % [name, sites[name].name],
  for name in std.objectFields(sites)
]
