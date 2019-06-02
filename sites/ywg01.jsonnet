local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'ywg01',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '184.105.55.64/26',
    },
    ipv6+: {
      prefix: '2001:470:1:81f::/64',
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
    metro: 'ywg',
    city: 'Winnipeg',
    state: '',
    latitude: 49.906,
    longitude: -97.2373,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
