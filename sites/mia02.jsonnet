local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mia02',
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
      prefix: '38.109.21.0/26',
    },
    ipv6+: {
      prefix: '2001:550:6c01::/64',
    },
  },
  transit+: {
    provider: 'Cogent Communications',
    uplink: '10g',
    asn: 'AS174',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'mia',
    city: 'Miami',
    state: 'FL',
    latitude: 25.7833,
    longitude: -80.2667,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
