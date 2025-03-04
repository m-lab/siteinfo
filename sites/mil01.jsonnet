local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2012-02-24',
    retired: '2017-08-02',
  },
  location+: {
    city: 'Milan',
    continent_code: 'EU',
    country_code: 'IT',
    latitude: 45.4494,
    longitude: 9.2783,
    metro: 'mil',
    state: '',
  },
  name: 'mil01',
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
      prefix: '213.200.99.192/26',
    },
    ipv6+: {
      prefix: '2001:668:1f:17::/64',
    },
  },
  transit+: {
    asn: 'AS3257',
    provider: 'GTT Communications',
    uplink: '1g',
  },
}
