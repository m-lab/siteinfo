local experiments = import 'experiments.jsonnet';
local sites = import 'sites.jsonnet';
local ttl = 0;
{
  site_count: std.length(sites), 
  experiment_count: std.length(experiments),
  node_count: [ttl + std.length(x.machines) for x in sites], 
}
