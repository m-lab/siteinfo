local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2009-01-28',
    retired: '2015-01-01',
  },
  location+: {
    city: 'San Francisco Bay Area',
    continent_code: 'NA',
    country_code: 'US',
    latitude: 37.4161,
    longitude: -122.049,
    metro: 'nuq',
    state: '',
  },
  name: 'nuq01',
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
      prefix: '64.9.225.128/26',
    },
    ipv6+: {
      prefix: '2604:ca00:f000::/64',
    },
  },
  transit+: {
    asn: 'AS36492',
    provider: 'Google, LLC',
    uplink: '1g',
  },
}
