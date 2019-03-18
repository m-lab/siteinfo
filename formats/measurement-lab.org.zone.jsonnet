local experiments = import 'experiments.jsonnet';
local sites = import 'sites.jsonnet';
local flatten(record) = std.strReplace(record, '.', '-');
local serial(current, latest) = (
  if current == "" || latest == "" then
    error "ERROR: given serial and latest must not be empty!"
  else
    if current < latest then
      latest
    else
      std.toString(std.parseInt(current) + 1)
);

local records = std.flattenArrays([
  // Routers & switches
  [
    local s1 = site.s1();
    { record: s1.record(), ipv4: s1.v4.ip },
  ]
  for site in sites
  if site.annotations.type == 'physical'
]) + [
  // DRACs
  local d = site.drac(mIndex);
  { record: d.record(), ipv4: d.v4.ip }
  for site in sites
  for mIndex in std.range(1, site.machines.count)
  if site.annotations.type == 'physical'
] + std.flattenArrays([
  // Machines
  local m = site.machine(mIndex);
  [
    { record: m.record(), ipv4: m.v4.ip, ipv6: m.v6.ip },
    { record: m.record('v4'), ipv4: m.v4.ip },
    { record: m.record('v6'), ipv6: m.v6.ip },
  ]
  for site in sites
  for mIndex in std.range(1, site.machines.count)
]) + std.flattenArrays([
  // Experiments
  local e = site.experiment(mIndex, experiment);
  [
    { record: e.record(), ipv4: e.v4.ip, ipv6: e.v6.ip },
    { record: e.record('v4'), ipv4: e.v4.ip },
    { record: e.record('v6'), ipv6: e.v6.ip },
    if e.flat_hostname == true then
      { record: flatten(e.record()), ipv4: e.v4.ip, ipv6: e.v6.ip },
  ]
  for site in sites
  for mIndex in std.range(1, site.machines.count)
  for experiment in experiments
  if (site.annotations.type == 'physical' ||
      experiment.cloud_enabled == true)
]);

std.lines([
  |||
    ;
    ; Primary DNS zone file
    ; NOTE: this file was automatically generated!!!
    ; NOTE: DO NOT EDIT
    ;

    $ORIGIN measurement-lab.org.
    $TTL    300

    @       IN      SOA     sns-pb.isc.org. support.measurementlab.net. (
            %s        ; Serial
            3600      ; Refresh
            600       ; Retry
            604800    ; Expire
            300 )     ; Negative caching TTL
    @       IN      NS      sns-pb.isc.org.
    @       IN      NS      ns-mlab.greenhost.net.

    ; TODO: fix A and MX records appropriately.
    @       IN      A       128.112.139.90
    @       IN      MX 0    mail.planet-lab.org.
    *       IN      MX 0    mail.planet-lab.org.
  ||| % serial(std.extVar('serial'), std.extVar('latest')),
] + [
  '%-32s  IN  A   \t%s' % [row.record, row.ipv4]
  for row in records
  if row != null && std.objectHas(row, 'ipv4') && row.ipv4 != ''
] + [
  '%-32s  IN  AAAA\t%s' % [row.record, row.ipv6]
  for row in records
  if row != null && std.objectHas(row, 'ipv6') && row.ipv6 != ''
])
