local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2020-02-19',
    retired: '2020-12-02',
  },
  location+: {
    city: 'Madrid',
    continent_code: 'EU',
    country_code: 'ES',
    latitude: 40.4667,
    longitude: -3.5667,
    metro: 'mad',
    state: '',
  },
  name: 'mad05',
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
      prefix: '93.142.125.192/26',
    },
    ipv6+: {
      prefix: '2001:5a0:2a00:201::/64',
    },
  },
  transit+: {
    asn: 'AS6453',
    provider: 'TATA COMMUNICATIONS (AMERICA) INC',
    uplink: '1g',
  },
}
