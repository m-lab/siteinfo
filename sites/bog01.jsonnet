local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2021-03-16',
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
