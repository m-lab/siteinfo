local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'ham02',
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
      prefix: '80.239.142.192/26',
    },
    ipv6+: {
      prefix: '2001:2030:0:19::/64',
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
    metro: 'ham',
    city: 'Hamburg',
    state: '',
    latitude: 53.6304,
    longitude: 9.98823,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
