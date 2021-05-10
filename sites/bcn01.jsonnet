local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'bcn01',
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
      prefix: '91.213.30.192/26',
    },
    ipv6+: {
      prefix: '2001:67c:137c:5::/64',
    },
  },
  transit+: {
    provider: 'Consorci de Serveis Universitaris de Catalunya',
    uplink: '10g',
    asn: 'AS49638',
  },
  switch+: {
    rstp: 'no',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'ES',
    metro: 'bcn',
    city: 'Barcelona',
    state: '',
    latitude: 41.2974,
    longitude: 2.0811,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
