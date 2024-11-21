local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2017-08-17',
    retired: '2019-11-19',
  },
  location+: {
    city: 'Maputo',
    continent_code: 'AF',
    country_code: 'MZ',
    latitude: -25.9208,
    longitude: 32.5726,
    metro: 'mpm',
    state: '',
  },
  name: 'mpm01',
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
      prefix: '41.94.23.0/26',
    },
    ipv6+: {
      prefix: null,
    },
  },
  transit+: {
    asn: 'AS327700',
    provider: 'Mozambique Research & Education Network - MoRENet',
    uplink: '1g',
  },
}
