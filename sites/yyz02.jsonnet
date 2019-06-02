local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'yyz02',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '216.66.68.128/26',
    },
    ipv6+: {
      prefix: '2001:470:1:70a::/64',
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
    metro: 'yyz',
    city: 'Toronto',
    state: '',
    latitude: 43.6767,
    longitude: -79.6306,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
