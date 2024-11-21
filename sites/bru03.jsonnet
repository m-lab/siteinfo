local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'bru03',
  annotations+: {
    type: 'physical',
  },
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
      prefix: '62.115.229.192/26',
    },
    ipv6+: {
      prefix: '2001:2030:0:39::/64',
    },
  },
  transit+: {
    provider: 'Telia Company AB',
    uplink: '10g',
    asn: 'AS1299',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'BE',
    metro: 'bru',
    city: 'Brussels',
    state: '',
    latitude: 50.9014,
    longitude: 4.48444,
  },
  lifecycle+: {
    created: '2019-01-01',
    retired: '2023-06-20',
  },
}
