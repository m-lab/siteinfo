local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lis03',
  annotations+: {
    type: 'physical',
  },
  machines+: {
    mlab1+: {
      model: r630,
    },
    mlab2+: {
      model: r630,
    },
    mlab3+: {
      model: r630,
    },
    mlab4+: {
      model: r630,
    },
  },
  network+: {
    ipv4+: {
      prefix: '162.213.98.0/26',
    },
    ipv6+: {
      prefix: '2a01:3e0:1900:101::/64',
    },
  },
  transit+: {
    provider: 'TATA COMMUNICATIONS (AMERICA) INC',
    uplink: '10g',
    asn: 'AS6453',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'PT',
    metro: 'lis',
    city: 'Lisbon',
    state: '',
    latitude: 38.7756,
    longitude: -9.1354,
  },
  lifecycle+: {
    created: '2020-02-26',
  },
}
