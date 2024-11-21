local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'fra05',
  annotations+: {
    type: 'physical',
  },
  machines+: {
    mlab1+: {
      model: 'r630',
    },
    mlab2+: {
      model: 'r630',
    },
    mlab3+: {
      model: 'r630',
    },
    mlab4+: {
      model: 'r630',
    },
  },
  network+: {
    ipv4+: {
      prefix: '193.142.125.0/26',
    },
    ipv6+: {
      prefix: '2a01:3e0:ff20:401::/64',
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
    latitude: 50.0333,
    longitude: 8.57056,
  },
  lifecycle+: {
    created: '2019-08-30',
    retired: '2023-09-01',
  },
}
