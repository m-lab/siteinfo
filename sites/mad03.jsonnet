local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mad03',
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
      prefix: '80.239.229.128/26',
    },
    ipv6+: {
      prefix: '2001:2030:34::/64',
    },
  },
  transit+: {
    provider: 'Telia Company AB',
    uplink: '10g',
    asn: 'AS1299',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'ES',
    metro: 'mad',
    city: 'Madrid',
    state: '',
    latitude: 40.4719,
    longitude: -3.56264,
  },
  lifecycle+: {
    created: '2019-01-01',
    retired: '2023-10-06',
  },
}
