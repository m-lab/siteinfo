local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lca01',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '82.116.199.0/26',
    },
    ipv6+: {
      prefix: null,
    },
  },
  transit+: {
    provider: 'University of Cyprus',
    uplink: '1g',
    asn: 'AS3268',
  },
  location+: {
    continent_code: 'AS',
    country_code: 'CY',
    metro: 'lca',
    city: 'Larnaca',
    state: '',
    latitude: 34.8809,
    longitude: 33.626,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
