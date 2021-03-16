local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations: {
    type: 'physical',
  },
  lifecycle: {
    created: '2021-03-16',
  },
  location: {
    city: 'Accra',
    continent_code: 'AF',
    country_code: 'GH',
    latitude: 5.606,
    longitude: -0.1681,
    metro: {
      metro: 'acc',
    },
    state: '',
  },
  name: 'acc02',
  network: {
    ipv4: {
      prefix: '196.49.14.192/26',
    },
    ipv6: {
      prefix: '',
    },
  },
  transit: {
    asn: 'AS30997',
    provider: 'Ghana Internet Exchange Association',
    uplink: '1g',
  },
}
