local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lax02',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '63.243.240.64/26',
    },
    ipv6+: {
      prefix: '2001:5a0:3a01::/64',
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
