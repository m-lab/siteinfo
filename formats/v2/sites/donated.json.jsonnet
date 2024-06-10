local sites = import 'sites.jsonnet';

[
  site.name
  for site in sites
  if site.annotations.donated == true
]
