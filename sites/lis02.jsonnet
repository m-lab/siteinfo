local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lis02',
  annotations+: {
    type: 'physical',
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
    country_code: 'GB',
    metro: 'lis',
    city: 'Lisbon',
    state: '',
    latitude: 38.7756,
    longitude: -9.1354,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}