local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lga03',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '64.86.148.128/26',
    },
    ipv6+: {
      prefix: '2001:5a0:4300::/64',
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
    metro: 'lga',
    city: 'New York',
    state: 'NY',
    latitude: 40.7667,
    longitude: -73.8667,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}