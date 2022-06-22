local sites = import 'sites.jsonnet';

{
  [site.name]: std.objectFields(site.machines)
  for site in sites
}
