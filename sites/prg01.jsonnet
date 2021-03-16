local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations: {
    type: 'physical',
  },
  lifecycle: {
    created: '2021-03-16',
  },
  location: {
    city: 'Prague',
    continent_code: 'EU',
    country_code: 'CZ',
    latitude: 50.0833,
    longitude: 14.4167,
    metro: {
      metro: 'prg',
    },
    state: '',
  },
  name: 'prg01',
  network: {
    ipv4: {
      prefix: '212.162.51.64/26',
    },
    ipv6: {
      prefix: '2001:4c08:2003:4::/64',
    },
  },
  transit: {
    asn: 'AS3356',
    provider: 'Level 3 Parent, LLC',
    uplink: '1g',
  },
}
