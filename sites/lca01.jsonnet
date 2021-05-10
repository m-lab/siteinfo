local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2013-02-20',
    retired: '2019-08-06',
  },
  location+: {
    city: 'Larnaca',
    continent_code: 'AS',
    country_code: 'CY',
    latitude: 34.8809,
    longitude: 33.626,
    metro: 'lca',
    state: '',
  },
  name: 'lca01',
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
      prefix: '82.116.199.0/26',
    },
    ipv6+: {
      prefix: null,
    },
  },
  transit+: {
    asn: 'AS3268',
    provider: 'University of Cyprus',
    uplink: '1g',
  },
}
