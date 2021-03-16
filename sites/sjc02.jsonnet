local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'sjc02',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '66.110.32.64/26',
    },
    ipv6+: {
      prefix: '2001:5a0:3e00::/64',
    },
  },
  transit+: {
    provider: 'TATA COMMUNICATIONS (AMERICA) INC',
    uplink: '10g',
    asn: 'AS6453',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'nuq',
    city: 'San Francisco Bay Area',
    state: 'CA',
    latitude: 37.3833,
    longitude: -122.0667,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
