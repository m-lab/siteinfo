local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2021-03-16',
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
