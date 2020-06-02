local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'prg06',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '162.213.98.64/26',
    },
    ipv6+: {
      prefix: '2a01:3e0:3a00:1::/64',
    },
  },
  transit+: {
    provider: 'TATA COMMUNICATIONS (AMERICA) INC',
    uplink: '10g',
    asn: 'AS6453',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'CZ',
    metro: 'prg',
    city: 'Prague',
    state: '',
    latitude: 50.0833,
    longitude: 14.4167,
  },
  lifecycle+: {
    created: '2020-05-06',
  },
}
