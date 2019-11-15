local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lhr06',
  annotations+: {
    type: 'physical',
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
    provider: 'TATA COMMUNICATIONS (AMERICA) INC',
    uplink: '10g',
    asn: 'AS6453',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'GB',
    metro: 'lhr',
    city: 'London',
    state: '',
    latitude: 51.4697,
    longitude: -0.4514,
  },
  lifecycle+: {
    created: '2019-11-15',
  },
}
