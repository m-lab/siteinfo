local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'prg03',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '80.239.156.128/26',
    },
    ipv6+: {
      prefix: '2001:2030:31::/64',
    },
  },
  transit+: {
    provider: 'Telia Company AB',
    uplink: '10g',
    asn: 'AS1299',
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
    created: '2019-01-01',
  },
}
