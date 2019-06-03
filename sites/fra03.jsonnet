local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'fra03',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '195.89.146.64/26',
    },
    ipv6+: {
      prefix: '2001:5001:200:30::/64',
    },
  },
  transit+: {
    provider: 'Vodafone Group PLC',
    uplink: '10g',
    asn: 'AS1273',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'DE',
    metro: 'fra',
    city: 'Frankfurt',
    state: '',
    latitude: 50.0379,
    longitude: 8.5622,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
