local sites = import 'sites.jsonnet';

{
  [site.name]: site.transit.uplink,
  for site in sites
}

