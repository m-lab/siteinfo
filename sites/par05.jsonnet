local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'par05',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '195.89.147.192/26',
    },
    ipv6+: {
      prefix: '2001:5003:300:e::/64',
    },
  },
  transit+: {
    provider: 'Vodafone Group PLC',
    uplink: '10g',
    asn: 'AS1273',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'FR',
    metro: 'par',
    city: 'Paris',
    state: '',
    latitude: 48.8584,
    longitude: 2.349,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
