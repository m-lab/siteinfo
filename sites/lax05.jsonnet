local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lax05',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '128.177.109.192/26',
    },
    ipv6+: {
      prefix: '2001:438:fffd:2e::/64',
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
    metro: 'lax',
    city: 'Los Angeles',
    state: 'CA',
    latitude: 33.9425,
    longitude: -118.4072,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
