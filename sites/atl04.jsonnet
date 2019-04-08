local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'atl04',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '173.205.0.192/26',
    },
    ipv6+: {
      prefix: '2001:668:1f:1c::/64',
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
    metro: 'atl',
    city: 'Atlanta',
    state: 'GA',
    latitude: 33.6367,
    longitude: -84.4281,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}