local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'yqm01',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '209.51.169.128/26',
    },
    ipv6+: {
      prefix: '2001:470:1:820::/64',
    },
  },
  transit+: {
    provider: 'Hurricane Electric LLC',
    uplink: '1g',
    asn: 'AS6939',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'CA',
    metro: 'yqm',
    city: 'Moncton',
    state: '',
    latitude: 46.1073,
    longitude: -64.6738,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
