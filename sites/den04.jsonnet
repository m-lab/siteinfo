local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'den04',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '128.177.109.64/26',
    },
    ipv6+: {
      prefix: '2001:438:fffd:2c::/64',
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
    metro: 'den',
    city: 'Denver',
    state: 'CO',
    latitude: 39.8561,
    longitude: -104.6737,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}