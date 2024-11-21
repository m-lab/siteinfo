local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lis02',
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
      prefix: '195.89.147.128/26',
    },
    ipv6+: {
      prefix: '2001:500d:200:3::/64',
    },
  },
  transit+: {
    provider: 'Vodafone Group PLC',
    uplink: '10g',
    asn: 'AS1273',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'PT',
    metro: 'lis',
    city: 'Lisbon',
    state: '',
    latitude: 38.7813,
    longitude: -9.13592,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
