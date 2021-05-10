local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2014-05-20',
    retired: '2018-03-09',
  },
  location+: {
    city: 'Bogota',
    continent_code: 'SA',
    country_code: 'CO',
    latitude: 4.5833,
    longitude: -74.0667,
    metro: 'bog',
    state: '',
  },
  name: 'bog01',
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
      prefix: '190.15.11.0/26',
    },
    ipv6+: {
      prefix: null,
    },
  },
  transit+: {
    asn: 'AS27817',
    provider: 'Red Nacional Académica de Tecnología Avanzada - RENATA',
    uplink: '1g',
  },
}
