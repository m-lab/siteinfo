local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'yyz04',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '162.213.100.128/26',
    },
    ipv6+: {
      prefix: '2001:5a0:800:301::/64',
    },
  },
  transit+: {
    provider: 'TATA COMMUNICATIONS (AMERICA) INC',
    uplink: '10g',
    asn: 'AS6453',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'CA',
    metro: 'yyz',
    city: 'Toronto',
    state: '',
    latitude: 43.6767,
    longitude: -79.6306,
  },
  lifecycle+: {
    created: '2021-01-06',
  },
}
