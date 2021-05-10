local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'nuq06',
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
      prefix: '128.177.109.128/26',
    },
    ipv6+: {
      prefix: '2001:438:fffd:2d::/64',
    },
  },
  transit+: {
    provider: 'Zayo Bandwidth',
    uplink: '10g',
    asn: 'AS6461',
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
