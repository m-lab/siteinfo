local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'iad03',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '66.198.10.128/26',
    },
    ipv6+: {
      prefix: '2001:5a0:3c03::/64',
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
    metro: 'iad',
    city: 'Washington',
    state: 'DC',
    latitude: 38.9444,
    longitude: -77.4558,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
