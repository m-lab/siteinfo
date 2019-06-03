local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'ams05',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '195.89.145.0/26',
    },
    ipv6+: {
      prefix: '2001:5002:100:21::/64',
    },
  },
  transit+: {
    provider: 'Vodafone Group PLC',
    uplink: '10g',
    asn: 'AS1273',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'NL',
    metro: 'ams',
    city: 'Amsterdam',
    state: '',
    latitude: 52.3086,
    longitude: 4.7639,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
