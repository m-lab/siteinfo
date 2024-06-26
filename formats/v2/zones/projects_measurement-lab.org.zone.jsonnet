local experiments = import 'experiments.jsonnet';
local sites = import 'sites.jsonnet';
local version = std.extVar('version');
local zone = std.extVar('zone');
local project = std.extVar('project');

// Cloud DNS nameservers are always of the format:
//     ns-cloud-[a-z][1-4].googledomains.com
// This small function returns the appropriate nameserver letter for each
// project for the ACME subdomain.
local acme_ns_letter() = (
  if project == 'mlab-sandbox' then
    'd'
  else if project == 'mlab-staging' then
    'b'
  else if project == 'mlab-oti' then
    'a'
  else
    error 'Unknown project: %s' % project
);

local records = std.flattenArrays([
  // Routers & switches
  local s1 = site.Switch();
  [
    // Add both v1 and v2 switch names for all versions.
    { record: s1.Record(), ipv4: s1.v4.ip },
    if version == 'v1' then
      { record: s1.Record('v2'), ipv4: s1.v4.ip },
  ]
  for site in sites
  if site.annotations.type == 'physical'
  if site.switch != null
]) + [
  // DRACs
  local d = site.DRAC(machine);
  { record: d.Record(), ipv4: d.v4.ip }
  for site in sites
  for machine in std.objectFields(site.machines)
  if site.annotations.type == 'physical'
] + std.flattenArrays([
  // Machines
  local m = site.Machine(machine);
  [
    { record: m.Record(), ipv4: m.v4.ip, ipv6: m.v6.ip },
    { record: m.Record('v4'), ipv4: m.v4.ip },
    { record: m.Record('v6'), ipv6: m.v6.ip },
  ]
  for site in sites
  for machine in std.objectFields(site.machines)
]) + std.flattenArrays([
  // Experiments
  local e = site.Experiment(machine, experiment);
  [
    { record: e.Record(), ipv4: e.v4.ip, ipv6: e.v6.ip },
    { record: e.Record('v4'), ipv4: e.v4.ip },
    { record: e.Record('v6'), ipv6: e.v6.ip },
  ]
  for site in sites
  for machine in std.objectFields(site.machines)
  for experiment in experiments
  if (site.annotations.type == 'physical' ||
      experiment.cloud_enabled == true)
]);

local primary_headers = |||
  $ORIGIN measurement-lab.org.

  @       IN      A       151.101.1.195
  @       IN      A       151.101.65.195
  www     IN      A       151.101.1.195
  www     IN      A       151.101.65.195

  ; ACME challenge CNAME redirect for cert-manager/LetsEncrypt. In this
  ; configuration cert-manager will automatically create the record that the
  ; CNAME points to instead of the usual _acme-challge.* record.
  _acme-challenge       IN      CNAME mlab.acme.%s.measurement-lab.org.

  ; Google site verification to use this domain in Firebase
  @                     IN      TXT   google-site-verification=YJspItE9L3D8mw76XKHxEGb7x9usph7x_CsqFQbUK28

  ; LetsEncrypt ACME DNS challenge record
  _acme-challenge.www   IN      TXT   zW_JZzJ7gszt1aiONHMlBMag4Zp5dDIiBWjrLHPe2rE

  ;
  ; GCP project subdomain delegations to Cloud DNS
  ;
  mlab-sandbox     IN     NS      ns-cloud-c1.googledomains.com.
                   IN     NS      ns-cloud-c2.googledomains.com.
                   IN     NS      ns-cloud-c3.googledomains.com.
                   IN     NS      ns-cloud-c4.googledomains.com.
  mlab-staging     IN     NS      ns-cloud-a1.googledomains.com.
                   IN     NS      ns-cloud-a2.googledomains.com.
                   IN     NS      ns-cloud-a3.googledomains.com.
                   IN     NS      ns-cloud-a4.googledomains.com.
  mlab-oti         IN     NS      ns-cloud-d1.googledomains.com.
                   IN     NS      ns-cloud-d2.googledomains.com.
                   IN     NS      ns-cloud-d3.googledomains.com.
                   IN     NS      ns-cloud-d4.googledomains.com.
  ;
  ; Autojoin zone delegations.
  ;
  sandbox          IN     NS      ns-cloud-b1.googledomains.com.
                   IN     NS      ns-cloud-b2.googledomains.com.
                   IN     NS      ns-cloud-b3.googledomains.com.
                   IN     NS      ns-cloud-b4.googledomains.com.
  staging          IN     NS      ns-cloud-b1.googledomains.com.
                   IN     NS      ns-cloud-b2.googledomains.com.
                   IN     NS      ns-cloud-b3.googledomains.com.
                   IN     NS      ns-cloud-b4.googledomains.com.
  autojoin         IN     NS      ns-cloud-a1.googledomains.com.
                   IN     NS      ns-cloud-a2.googledomains.com.
                   IN     NS      ns-cloud-a3.googledomains.com.
                   IN     NS      ns-cloud-a4.googledomains.com.

  ;
  ; Delegate acme subdomains to Cloud DNS servers.
  acme             IN     NS      ns-cloud-%s1.googledomains.com.
                   IN     NS      ns-cloud-%s2.googledomains.com.
                   IN     NS      ns-cloud-%s3.googledomains.com.
                   IN     NS      ns-cloud-%s4.googledomains.com.

||| % [
  project,
  acme_ns_letter(),
  acme_ns_letter(),
  acme_ns_letter(),
  acme_ns_letter(),
];

local project_headers = |||
  $ORIGIN %s.measurement-lab.org.

  _acme-challenge       IN      CNAME %s.acme.%s.measurement-lab.org.
||| % [project, project, project];

std.lines([
  |||
    ;
    ; NOTE: this file was automatically generated!!!
    ; NOTE: DO NOT EDIT
    ;

    $TTL    300
    %s
  ||| % if version == 'v1' then primary_headers else project_headers,
] + [
  '%-32s  IN  A   \t%s' % [row.record, row.ipv4]
  for row in records
  if row != null && std.objectHas(row, 'ipv4') && row.ipv4 != ''
] + [
  '%-32s  IN  AAAA\t%s' % [row.record, row.ipv6]
  for row in records
  if row != null && std.objectHas(row, 'ipv6') && row.ipv6 != ''
])
