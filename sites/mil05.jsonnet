local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mil05',
  annotations+: {
    donated: true,
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
      prefix: '195.89.147.0/26',
    },
    ipv6+: {
      prefix: '2001:5008:100:14::/64',
    },
  },
  transit+: {
    provider: 'Vodafone Group PLC',
    uplink: '10g',
    asn: 'AS1273',
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
