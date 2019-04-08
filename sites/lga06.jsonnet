local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lga06',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '128.177.119.192/26',
    },
    ipv6+: {
      prefix: '2001:438:fffd:2b::/64',
    },
  },
  transit+: {
    provider: 'Zayo Bandwidth',
    uplink: '1g',
    asn: 'AS6461',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'lga',
    city: 'New York',
    state: 'NY',
    latitude: 40.7667,
    longitude: -73.8667,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}