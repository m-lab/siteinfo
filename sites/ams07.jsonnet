local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'ams07',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '31.186.242.0/26',
    },
    ipv6+: {
      prefix: '2a02:b50:4020:cfb1::/64',
    },
  },
  transit+: {
    provider: 'Internap Corporation',
    uplink: '1g',
    asn: 'AS30282',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
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
