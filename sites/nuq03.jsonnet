local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'nuq03',
  annotations+: {
    donated: true,
    type: 'physical',
  },
  machines+: {
    mlab1+: {
      model: 'r630',
    },
    mlab2+: {
      model: 'r630',
    },
    mlab3+: {
      model: 'r630',
    },
    mlab4+: {
      model: 'r630',
    },
  },
  network+: {
    ipv4+: {
      prefix: '38.102.163.128/26',
    },
    ipv6+: {
      prefix: '2001:550:1502::/64',
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
    metro: 'nuq',
    city: 'San Francisco Bay Area',
    state: 'CA',
    latitude: 37.4161,
    longitude: -122.049,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
