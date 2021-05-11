local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mil03',
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
      prefix: '77.67.115.0/26',
    },
    ipv6+: {
      prefix: '2001:668:1f:62::/64',
    },
  },
  transit+: {
    provider: 'GTT Communications Inc.',
    uplink: '10g',
    asn: 'AS3257',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'IT',
    metro: 'mil',
    city: 'Milan',
    state: '',
    latitude: 45.464,
    longitude: 9.1916,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
