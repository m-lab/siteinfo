local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'ord05',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '128.177.163.0/26',
    },
    ipv6+: {
      prefix: '2001:438:fffd:2f::/64',
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
    metro: 'ord',
    city: 'Chicago',
    state: 'IL',
    latitude: 41.9786,
    longitude: -87.9047,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
