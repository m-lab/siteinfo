local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'atl03',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '64.86.200.192/26',
    },
    ipv6+: {
      prefix: '2001:5a0:3b02::/64',
    },
  },
  transit+: {
    provider: 'TATA COMMUNICATIONS (AMERICA) INC',
    uplink: '1g',
    asn: 'AS6453',
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
