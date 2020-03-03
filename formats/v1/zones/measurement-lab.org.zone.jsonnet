local experiments = import 'experiments.jsonnet';
local sites = import 'sites.jsonnet';
local flatten(record) = std.strReplace(record, '.', '-');
local serial(current, latest) = (
  if current == '' || latest == '' then
    error 'ERROR: given serial and latest must not be empty!'
  else
    if current < latest then
      latest
    else
      std.toString(std.parseInt(current) + 1)
);

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
  ] + if std.extVar('version') == "v1" then
    if e.flat_hostname == true then [
      { record: flatten(e.Record()), ipv4: e.v4.ip, ipv6: e.v6.ip },
      { record: flatten(e.Record('v4')), ipv4: e.v4.ip },
      { record: flatten(e.Record('v6')), ipv6: e.v6.ip },
    ] else [
      // do nothing for flat_hostname == false.
    ]
  else []
  for site in sites
  for mIndex in std.range(1, std.length(site.machines))
  for experiment in experiments
  if (site.annotations.type == 'physical' ||
      experiment.cloud_enabled == true)
]);

local primary_headers = |||
    $ORIGIN measurement-lab.org.

    @       IN      SOA     ns.measurementlab.net. support.measurementlab.net. (
            %s        ; Serial
            3600      ; Refresh
            600       ; Retry
            604800    ; Expire
            300 )     ; Negative caching TTL
    @       IN      NS      ns-mlab.greenhost.net.
    @       IN      NS      ns.measurementlab.net.

    @       IN      A       151.101.1.195
    @       IN      A       151.101.65.195
    www     IN      A       151.101.1.195
    www     IN      A       151.101.65.195

    ; Google site verification to use this domain in Firebase
    @                     IN      TXT   google-site-verification=YJspItE9L3D8mw76XKHxEGb7x9usph7x_CsqFQbUK28

    ; LetsEncrypt ACME DNS challenge record
    _acme-challenge.www   IN      TXT   zW_JZzJ7gszt1aiONHMlBMag4Zp5dDIiBWjrLHPe2rE

    ; Delegate mlab-sandbox subdomain to sandbox Cloud DNS servers.
    mlab-sandbox     IN     NS      ns1-cloud-c1.googledomains.com.
                     IN     NS      ns1-cloud-c2.googledomains.com.
                     IN     NS      ns1-cloud-c3.googledomains.com.
                     IN     NS      ns1-cloud-c4.googledomains.com.
    ; Delegate mlab-staging subdomain to staging Cloud DNS servers.
    mlab-staging     IN     NS      ns1-cloud-a1.googledomains.com.
                     IN     NS      ns1-cloud-a2.googledomains.com.
                     IN     NS      ns1-cloud-a3.googledomains.com.
                     IN     NS      ns1-cloud-a4.googledomains.com.
    ; Delegate mlab-oti subdomain to staging Cloud DNS servers.
    mlab-oti         IN     NS      ns1-cloud-d1.googledomains.com.
                     IN     NS      ns1-cloud-d2.googledomains.com.
                     IN     NS      ns1-cloud-d3.googledomains.com.
                     IN     NS      ns1-cloud-d4.googledomains.com.
||| % serial(std.extVar('serial'), std.extVar('latest'));

local project_headers = |||
    $ORIGIN %s.measurement-lab.org.
||| % std.extVar('project');

std.lines([
  |||
    ;
    ; NOTE: this file was automatically generated!!!
    ; NOTE: DO NOT EDIT
    ;

    $TTL    3600
    %s
  ||| % if std.extVar('version') == "v2" then project_headers else primary_headers
] + [
  '%-32s  IN  A   \t%s' % [row.record, row.ipv4]
  for row in records
  if row != null && std.objectHas(row, 'ipv4') && row.ipv4 != ''
] + [
  '%-32s  IN  AAAA\t%s' % [row.record, row.ipv6]
  for row in records
  if row != null && std.objectHas(row, 'ipv6') && row.ipv6 != ''
])
