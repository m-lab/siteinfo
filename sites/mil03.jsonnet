local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mil03',
  annotations+: {
    type: 'physical',
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
    continent_code: 'NA',
    country_code: 'US',
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