local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'par03',
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
      prefix: '80.239.222.64/26',
    },
    ipv6+: {
      prefix: '2001:2030:35::/64',
    },
  },
  transit+: {
    provider: 'Telia Company AB',
    uplink: '10g',
    asn: 'AS1299',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'FR',
    metro: 'par',
    city: 'Paris',
    state: '',
    latitude: 49.0097,
    longitude: 2.54778,
  },
  lifecycle+: {
    created: '2019-01-01',
    retired: '2023-10-06',
  },
}
