local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'gru01',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '189.125.228.64/26',
    },
    ipv6+: {
      prefix: '2804:4c0:ffff:fac3::/64',
    },
  },
  transit+: {
    provider: 'Level 3 Parent, LLC',
    uplink: '10g',
    asn: 'AS3549',
  },
  location+: {
    continent_code: 'SA',
    country_code: 'BR',
    metro: 'gru',
    city: 'Sao Paulo',
    state: '',
    latitude: -23.4305,
    longitude: -46.473,
  },
  lifecycle+: {
    created: '2019-08-01',
  },
}
