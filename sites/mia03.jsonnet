local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mia03',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '66.110.73.0/26',
    },
    ipv6+: {
      prefix: '2001:5a0:3801::/64',
    },
  },
  transit+: {
    provider: 'TATA COMMUNICATIONS (AMERICA) INC',
    uplink: '1g',
    asn: 'AS6453',
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
