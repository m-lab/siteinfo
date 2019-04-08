local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'yvr01',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '184.105.70.192/26',
    },
    ipv6+: {
      prefix: '2001:470:1:822::/64',
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
    metro: 'yvr',
    city: 'Vancouver',
    state: '',
    latitude: 49.1902,
    longitude: -123.1837,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}