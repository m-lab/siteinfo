local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations: {
    type: 'physical',
  },
  lifecycle: {
    created: '2021-03-16',
  },
  location: {
    city: 'Larnaca',
    continent_code: 'AS',
    country_code: 'CY',
    latitude: 34.8809,
    longitude: 33.626,
    metro: {
      metro: 'lca',
    },
    state: '',
  },
  name: 'lca01',
  network: {
    ipv4: {
      prefix: '82.116.199.0/26',
    },
    ipv6: {
      prefix: '',
    },
  },
  transit: {
    asn: 'AS3268',
    provider: 'University of Cyprus',
    uplink: '1g',
  },
}
