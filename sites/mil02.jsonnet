local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mil02',
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
      prefix: '80.239.222.0/26',
    },
    ipv6+: {
      prefix: '2001:2030:30::/64',
    },
  },
  transit+: {
    provider: 'Telia Company AB',
    uplink: '10g',
    asn: 'AS1299',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'IT',
    metro: 'mil',
    city: 'Milan',
    state: '',
    latitude: 45.4494,
    longitude: 9.2783,
  },
  lifecycle+: {
    created: '2019-01-01',
    retired: '2023-10-06',
  },
}
