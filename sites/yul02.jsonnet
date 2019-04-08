local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'yul02',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '216.66.14.64/26',
    },
    ipv6+: {
      prefix: '2001:470:1:48f::/64',
    },
  },
  transit+: {
    provider: 'Hurricane Electric LLC',
    uplink: '1g',
    asn: 'AS6939',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'yul',
    city: 'Montreal',
    state: '',
    latitude: 45.4576,
    longitude: -73.7497,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}