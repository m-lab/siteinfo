local sites = import 'sites.jsonnet';
local version = std.extVar('version');

local records = std.flattenArrays([
  // Routers & switches
  local s1 = site.Switch();
  [
    { record: s1.Record(), ipv4: s1.v4.ip },
  ]
  for site in sites
  if site.annotations.type == 'physical'
]);

std.lines([
  |||
    $ORIGIN measurement-lab.org.
    $TTL    3600

    @       IN      A       151.101.1.195
    @       IN      A       151.101.65.195
    www     IN      A       151.101.1.195
    www     IN      A       151.101.65.195

    ; Google site verification to use this domain in Firebase
    @                     IN      TXT   google-site-verification=YJspItE9L3D8mw76XKHxEGb7x9usph7x_CsqFQbUK28

    ; LetsEncrypt ACME DNS01 challenge record for HTTPS redirects of
    ; www.measurement-lab.org to www.measurementlab.net by Firebase
    _acme-challenge.www   IN      TXT   zW_JZzJ7gszt1aiONHMlBMag4Zp5dDIiBWjrLHPe2r

    ; LetsEncrypt ACME DNS01 challenge. cert-manager autocreates this target
    ; when needed for validation.
    _acme-challenge       IN      CNAME mlab.acme.mlab-oti.measurement-lab.org.

    ; Delegate mlab-sandbox subdomain to sandbox Cloud DNS servers.
    mlab-sandbox     IN     NS      ns-cloud-c1.googledomains.com.
                     IN     NS      ns-cloud-c2.googledomains.com.
                     IN     NS      ns-cloud-c3.googledomains.com.
                     IN     NS      ns-cloud-c4.googledomains.com.
    ; Delegate mlab-staging subdomain to staging Cloud DNS servers.
    mlab-staging     IN     NS      ns-cloud-a1.googledomains.com.
                     IN     NS      ns-cloud-a2.googledomains.com.
                     IN     NS      ns-cloud-a3.googledomains.com.
                     IN     NS      ns-cloud-a4.googledomains.com.
    ; Delegate mlab-oti subdomain to staging Cloud DNS servers.
    mlab-oti         IN     NS      ns-cloud-d1.googledomains.com.
                     IN     NS      ns-cloud-d2.googledomains.com.
                     IN     NS      ns-cloud-d3.googledomains.com.
                     IN     NS      ns-cloud-d4.googledomains.com.

  |||,
] + [
  '%-32s  IN  A   \t%s' % [row.record, row.ipv4]
  for row in records
  if row != null && std.objectHas(row, 'ipv4') && row.ipv4 != ''
])
