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

    ; LetsEncrypt ACME DNS challenge record
    _acme-challenge.www   IN      TXT   zW_JZzJ7gszt1aiONHMlBMag4Zp5dDIiBWjrLHPe2r

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
])
