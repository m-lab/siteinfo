local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2021-03-16',
  },
  location+: {
    city: 'Amsterdam',
    continent_code: 'EU',
    country_code: 'NL',
    latitude: 52.3086,
    longitude: 4.76389,
    metro: 'ams',
    state: '',
  },
  name: 'ams07',
  network+: {
    ipv4+: {
      prefix: '31.186.242.0/26',
    },
    ipv6+: {
      prefix: '2a02:b50:4020:cfb1::/64',
    },
  },
  transit+: {
    asn: 'AS30282',
    provider: 'Internap Holding LLC',
    uplink: '1g',
  },
}
