local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'acc02',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '196.49.14.192/26',
    },
    ipv6+: {
      prefix: null,
    },
  },
  transit+: {
    provider: 'Ghana Internet Exchange Association',
    uplink: '1g',
    asn: 'AS30997',
  },
  location+: {
    continent_code: 'AF',
    country_code: 'GH',
    metro: 'acc',
    city: 'Accra',
    state: '',
    latitude: 5.606,
    longitude: -0.1681,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
