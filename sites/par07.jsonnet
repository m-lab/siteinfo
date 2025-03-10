local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'par07',
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
      prefix: '162.213.100.0/26',
    },
    ipv6+: {
      prefix: '2a01:3e0:ff80:8001::/64',
    },
  },
  transit+: {
    provider: 'TATA COMMUNICATIONS (AMERICA) INC',
    uplink: '10g',
    asn: 'AS6453',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'FR',
    metro: 'par',
    city: 'Paris',
    state: '',
    latitude: 49.0097,
    longitude: 2.54778,
  },
  lifecycle+: {
    created: '2020-10-23',
    retired: '2023-07-10',
  },
}
