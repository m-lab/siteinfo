local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2019-11-15',
    retired: '2020-12-03',
  },
  location+: {
    city: 'London',
    continent_code: 'EU',
    country_code: 'GB',
    latitude: 51.4697,
    longitude: -0.4514,
    metro: 'lhr',
    state: '',
  },
  name: 'lhr06',
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
      prefix: '93.142.125.128/26',
    },
    ipv6+: {
      prefix: '2a01:3e0:10:2002::/64',
    },
  },
  transit+: {
    asn: 'AS6453',
    provider: 'TATA COMMUNICATIONS (AMERICA) INC',
    uplink: '1g',
  },
}
