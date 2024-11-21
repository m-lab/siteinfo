local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2014-11-17',
    retired: '2019-05-22',
  },
  location+: {
    city: 'Accra',
    continent_code: 'AF',
    country_code: 'GH',
    latitude: 5.60519,
    longitude: -0.166786,
    metro: 'acc',
    state: '',
  },
  name: 'acc02',
  machines+: {
    mlab1+: {
      model: 'r630',
    },
    mlab2+: {
      model: 'r630',
    },
    mlab3+: {
      model: 'r630',
    },
    mlab4+: {
      model: 'r630',
    },
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
    asn: 'AS30997',
    provider: 'Ghana Internet Exchange Association',
    uplink: '1g',
  },
}
