local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'fra05',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '193.142.125.0/26',
    },
    ipv6+: {
      prefix: null,
    },
  },
  transit+: {
    provider: 'TATA COMMUNICATIONS (AMERICA) INC',
    uplink: '10g',
    asn: 'AS6453',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'DE',
    metro: 'fra',
    city: 'Frankfurt',
    state: '',
    latitude: 50.0379,
    longitude: 8.5622,
  },
  lifecycle+: {
    created: '2019-08-30',
  },
}
