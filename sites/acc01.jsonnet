local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2014-12-03',
    retired: '2015-08-01',
  },
  location+: {
    city: 'Accra',
    continent_code: 'AF',
    country_code: 'GH',
    latitude: 5.606,
    longitude: -0.1681,
    metro: 'acc',
    state: '',
  },
  name: 'acc01',
  machines+: {
    mlab1+: {
      model: r630,
    },
    mlab2+: {
      model: r630,
    },
    mlab3+: {
      model: r630,
    },
    mlab4+: {
      model: r630,
    },
  },
  network+: {
    ipv4+: {
      prefix: '196.201.2.192/26',
    },
    ipv6+: {
      prefix: null,
    },
  },
  transit+: {
    asn: 'AS30997',
    provider: 'Ghana Internet Exchange Association',
    uplink: '1g',
  },
}
