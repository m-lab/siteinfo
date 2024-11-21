local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mrs04',
  annotations+: {
    type: 'physical',
  },
  machines+: {
    mlab1+: {
      model: 'r640',
    },
    mlab2+: {
      model: 'r640',
    },
    mlab3+: {
      model: 'r640',
    },
    mlab4+: {
      model: 'r640',
    },
  },
  network+: {
    ipv4+: {
      prefix: '162.213.98.192/26',
    },
    ipv6+: {
      prefix: '2a01:3e0:ff50:201::/64',
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
    metro: 'mrs',
    city: 'Marseille',
    state: '',
    latitude: 43.4393,
    longitude: 5.22142,
  },
  lifecycle+: {
    created: '2020-11-04',
  },
}
