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
    latitude: 45.464,
    longitude: 9.1916,
    metro: 'mil',
    state: '',
  },
  name: 'mil01',
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
