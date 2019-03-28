local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'sea02',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '63.243.224.0/26',
    },
    ipv6+: {
      prefix: '2001:5a0:4400::/64',
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
    metro: 'sea',
    city: 'Seattle',
    state: 'WA',
    latitude: 47.4489,
    longitude: -122.3094,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
