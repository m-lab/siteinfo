local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'ams03',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '80.239.169.0/26',
    },
    ipv6+: {
      prefix: '2001:2030:32::/64',
    },
  },
  transit+: {
    provider: 'Telia Company AB',
    uplink: '10g',
    asn: 'AS1299',
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
