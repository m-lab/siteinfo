local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'nuq02',
  annotations+: {
    type: 'physical',
  },
  machines+: {
    mlab1+: {
      model: r630,
    },
    mlab2+: {
      model: r630,
    },
    mlab3+: {
      model: r630,
    },
    mlab4+: {
      model: r630,
    },
  },
  network+: {
    ipv4+: {
      prefix: '149.20.5.64/26',
    },
    ipv6+: {
      prefix: '2001:4f8:1:1001::/64',
    },
  },
  transit+: {
    provider: 'Internet Systems Consortium, Inc.',
    uplink: '10g',
    asn: 'AS1280',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'nuq',
    city: 'San Francisco Bay Area',
    state: 'CA',
    latitude: 37.3833,
    longitude: -122.0667,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
