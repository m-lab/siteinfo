local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'ams06',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '212.32.246.192/26',
    },
    ipv6+: {
      prefix: '2001:1af8:4900:b070::/64',
    },
  },
  transit+: {
    provider: 'LeaseWeb Netherlands B.V.',
    uplink: '1g',
    asn: 'AS60781',
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
