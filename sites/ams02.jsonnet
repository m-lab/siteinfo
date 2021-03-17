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
  name: 'ams02',
  network+: {
    ipv4+: {
      prefix: '72.26.217.64/26',
    },
    ipv6+: {
      prefix: '2001:48c8:7::/64',
    },
  },
  transit+: {
    asn: 'AS29791',
    provider: 'Internap Holding LLC',
    uplink: '1g',
  },
}
