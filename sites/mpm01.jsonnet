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
    longitude: 32.5725,
    metro: 'mpm',
    state: '',
  },
  name: 'mpm01',
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
