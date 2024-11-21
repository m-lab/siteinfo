local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'jnb01',
  annotations+: {
    donated: true,
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
      prefix: '196.24.45.128/26',
    },
    ipv6+: {
      prefix: '2001:4200:fff0:4512::/64',
    },
  },
  transit+: {
    provider: 'TENET (The UNINET Project)',
    uplink: '10g',
    asn: 'AS2018',
  },
  location+: {
    continent_code: 'AF',
    country_code: 'ZA',
    metro: 'jnb',
    city: 'Johannesburg',
    state: '',
    latitude: -26.1392,
    longitude: 28.246,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
