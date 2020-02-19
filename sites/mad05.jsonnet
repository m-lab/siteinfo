local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mad05',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '93.142.125.192/26',
    },
    ipv6+: {
      prefix: '2001:5a0:2a00:201::0/64',
    },
  },
  transit+: {
    provider: 'TATA COMMUNICATIONS (AMERICA) INC',
    uplink: '10g',
    asn: 'AS6453',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'ES',
    metro: 'mad',
    city: 'Madrid',
    state: '',
    latitude: 40.4667,
    longitude: -3.5667,
  },
  lifecycle+: {
    created: '2020-02-19',
  },
}
