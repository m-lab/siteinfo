local sites = import 'sites.jsonnet';

{
  local project = site.Machine(machine).project,
  [site.Machine(machine).Record()]: project
  for site in sites
  for machine in std.objectFields(site.machines)
}
