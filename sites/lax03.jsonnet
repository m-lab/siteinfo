local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lax03',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '173.205.3.64/26',
    },
    ipv6+: {
      prefix: '2001:668:1f:1e::/64',
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