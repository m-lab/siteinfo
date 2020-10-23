local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'par07',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '162.213.100.0/26',
    },
    ipv6+: {
      prefix: '2a01:3e0:ff80:8001::/64',
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
    metro: 'par',
    city: 'Paris',
    state: '',
    latitude: 48.8584,
    longitude: 2.349,
  },
  lifecycle+: {
    created: '2020-10-23',
  },
}
