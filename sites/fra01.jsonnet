local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'fra01',
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
      prefix: '80.239.199.0/26',
    },
    ipv6+: {
      prefix: '2001:2030:2f::/64',
    },
  },
  transit+: {
    provider: 'Telia Company AB',
    uplink: '10g',
    asn: 'AS1299',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'DE',
    metro: 'fra',
    city: 'Frankfurt',
    state: '',
    latitude: 50.0333,
    longitude: 8.57056,
  },
  lifecycle+: {
    created: '2019-01-01',
    retired: '2023-11-09',
  },
}
