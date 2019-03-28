local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'prg05',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '195.89.147.64/26',
    },
    ipv6+: {
      prefix: '2001:5016:100:3::/64',
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
    metro: 'prg',
    city: 'Prague',
    state: '',
    latitude: 50.0833,
    longitude: 14.4167,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
