//[
// import 'sites/lga0t.jsonnet',
// import 'sites/tyo01.jsonnet',
//]
local sites = {
   lga0t: import 'sites/lga0t.jsonnet',
   tyo01: import 'sites/tyo01.jsonnet'
};
[
  sites[name],
  for name in std.objectFields(sites)
  if sites[name].name == name
]
