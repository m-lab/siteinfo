local sites = import 'sites.jsonnet';

{
  [site.name]: site.MaxRate()
  for site in sites
  if site.annotations.type == 'physical'
}
