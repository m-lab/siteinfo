local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'ord03',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '66.198.24.64/26',
    },
    ipv6+: {
      prefix: '2001:5a0:4200::/64',
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
    metro: 'ord',
    city: 'Chicago',
    state: 'IL',
    latitude: 41.9786,
    longitude: -87.9047,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
