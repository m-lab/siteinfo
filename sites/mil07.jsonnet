local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mil07',
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
      prefix: '162.213.100.64/26',
    },
    ipv6+: {
      prefix: '2a01:3e0:ff90:1::/64',
    },
  },
  transit+: {
    provider: 'TATA COMMUNICATIONS (AMERICA) INC',
    uplink: '10g',
    asn: 'AS6453',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'IT',
    metro: 'mil',
    city: 'Milan',
    state: '',
    latitude: 45.4494,
    longitude: 9.2783,
  },
  lifecycle+: {
    created: '2020-11-17',
  },
}
