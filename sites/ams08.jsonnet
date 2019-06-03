local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'ams08',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '213.244.128.128/26',
    },
    ipv6+: {
      prefix: '2001:4c08:2003:2::/64',
    },
  },
  transit+: {
    provider: 'Level 3 Parent, LLC',
    uplink: '1g',
    asn: 'AS3356',
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
