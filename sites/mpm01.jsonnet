local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mpm01',
  annotations+: {
    type: 'physical',
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
    provider: 'Mozambique Research & Education Network - MoRENet',
    uplink: '1g',
    asn: 'AS327700',
  },
  switch+: {
    flow_control: 'no',
    uplink_port: '45',
    make: 'hp',
  },
  location+: {
    continent_code: 'AF',
    country_code: 'MZ',
    metro: 'mpm',
    city: 'Maputo',
    state: '',
    latitude: -25.9208,
    longitude: 32.5725,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
