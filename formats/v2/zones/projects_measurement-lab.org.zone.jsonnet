local experiments = import 'experiments.jsonnet';
local sites = import 'sites.jsonnet';
local records = std.flattenArrays([
  // Routers & switches
  [
    local s1 = site.Switch();
    { record: s1.Record(), ipv4: s1.v4.ip },
  ]
  for site in sites
  if site.annotations.type == 'physical'
]) + [
  // DRACs
  local d = site.DRAC(mIndex);
  { record: d.Record(), ipv4: d.v4.ip }
  for site in sites
  for mIndex in std.range(1, std.length(site.machines))
  if site.annotations.type == 'physical'
] + std.flattenArrays([
  // Machines
  local m = site.Machine(mIndex);
  [
    { record: m.Record(), ipv4: m.v4.ip, ipv6: m.v6.ip },
    { record: m.Record('v4'), ipv4: m.v4.ip },
    { record: m.Record('v6'), ipv6: m.v6.ip },
  ]
  for site in sites
  for mIndex in std.range(1, std.length(site.machines))
]) + std.flattenArrays([
  // Experiments
  local e = site.Experiment(mIndex, experiment);
  [
    { record: e.Record(), ipv4: e.v4.ip, ipv6: e.v6.ip },
    { record: e.Record('v4'), ipv4: e.v4.ip },
    { record: e.Record('v6'), ipv6: e.v6.ip },
  ]
  for site in sites
  for mIndex in std.range(1, std.length(site.machines))
  for experiment in experiments
  if (site.annotations.type == 'physical' ||
      experiment.cloud_enabled == true)
]);

std.lines([
  |||
    ;
    ; Per-project DNS zone file
    ; NOTE: this file was automatically generated!!!
    ; NOTE: DO NOT EDIT
    ;

    $ORIGIN %s.measurement-lab.org.
    $TTL    300

  ||| % std.extVar('project'),
] + [
  '%-32s  IN  A   \t%s' % [row.record, row.ipv4]
  for row in records
  if row != null && std.objectHas(row, 'ipv4') && row.ipv4 != ''
] + [
  '%-32s  IN  AAAA\t%s' % [row.record, row.ipv6]
  for row in records
  if row != null && std.objectHas(row, 'ipv6') && row.ipv6 != ''
])
