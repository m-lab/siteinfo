local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'arn06',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '193.142.125.64/26',
    },
    ipv6+: {
      prefix: '2a01:3e0:1b01:2::/64',
    },
  },
  transit+: {
    provider: 'TATA COMMUNICATIONS (AMERICA) INC',
    uplink: '10g',
    asn: 'AS6453',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'SE',
    metro: 'arn',
    city: 'Stockholm',
    state: '',
    latitude: 59.6519,
    longitude: 17.9186,
  },
  lifecycle+: {
    created: '2019-08-30',
  },
}
