local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'jnb01',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '196.24.45.128/26',
    },
    ipv6+: {
      prefix: '2001:4200:fff0:4512::/64',
    },
  },
  transit+: {
    provider: 'TENET (The UNINET Project)',
    uplink: '10g',
    asn: 'AS2018',
  },
  location+: {
    continent_code: 'AF',
    country_code: 'ZA',
    metro: 'jnb',
    city: 'Johannesburg',
    state: '',
    latitude: -26.2035,
    longitude: 28.1335,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
