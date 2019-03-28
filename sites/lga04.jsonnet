local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lga04',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '173.205.4.64/26',
    },
    ipv6+: {
      prefix: '2001:668:1f:22::/64',
    },
  },
  transit+: {
    provider: 'GTT Communications Inc.',
    uplink: '1g',
    asn: 'AS3257',
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
