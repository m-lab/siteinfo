local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations: {
    type: 'physical',
  },
  lifecycle: {
    created: '2021-03-16',
  },
  location: {
    city: 'Madrid',
    continent_code: 'EU',
    country_code: 'ES',
    latitude: 40.4667,
    longitude: -3.5667,
    metro: {
      metro: 'mad',
    },
    state: '',
  },
  name: 'mad05',
  network: {
    ipv4: {
      prefix: '93.142.125.192/26',
    },
    ipv6: {
      prefix: '2001:5a0:2a00:201::/64',
    },
  },
  transit: {
    asn: 'AS6453',
    provider: 'TATA COMMUNICATIONS (AMERICA) INC',
    uplink: '1g',
  },
}
