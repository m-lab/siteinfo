local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mrs04',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '162.213.98.192/26',
    },
    ipv6+: {
      prefix: '2a01:3e0:ff50:201::/64',
    },
  },
  transit+: {
    provider: 'TATA COMMUNICATIONS (AMERICA) INC',
    uplink: '10g',
    asn: 'AS6453',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'FR',
    metro: 'mrs',
    city: 'Marseille',
    state: '',
    latitude: 43.4366,
    longitude: 5.215,
  },
  lifecycle+: {
    created: '2020-11-04',
  },
}
