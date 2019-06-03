local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mia05',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '128.177.109.0/26',
    },
    ipv6+: {
      prefix: '2001:438:fffd:29::/64',
    },
  },
  transit+: {
    provider: 'Zayo Bandwidth',
    uplink: '10g',
    asn: 'AS6461',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'mia',
    city: 'Miami',
    state: 'FL',
    latitude: 25.7833,
    longitude: -80.2667,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
