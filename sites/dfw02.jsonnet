local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'dfw02',
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
      prefix: '64.86.132.64/26',
    },
    ipv6+: {
      prefix: '2001:5a0:3f00::/64',
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
    metro: 'dfw',
    city: 'Dallas',
    state: 'TX',
    latitude: 32.8969,
    longitude: -97.0381,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
