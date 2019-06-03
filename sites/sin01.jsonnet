local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'sin01',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '180.87.97.64/26',
    },
    ipv6+: {
      prefix: '2405:2000:301::/64',
    },
  },
  transit+: {
    provider: 'TATA COMMUNICATIONS (AMERICA) INC',
    uplink: '10g',
    asn: 'AS6453',
  },
  location+: {
    continent_code: 'AS',
    country_code: 'SG',
    metro: 'sin',
    city: 'Singapore',
    state: '',
    latitude: 1.355,
    longitude: 103.988,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
