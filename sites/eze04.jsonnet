local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'eze04',
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
      prefix: '190.94.191.128/26',
    },
    ipv6+: {
      prefix: '2800:a90:10:7::/64',
    },
  },
  transit+: {
    provider: 'INTERNEXA BRASIL OPERADORA DE TELECOMUNICACOES S.A',
    uplink: '10g',
    asn: 'AS262589',
  },
  location+: {
    continent_code: 'SA',
    country_code: 'AR',
    metro: 'eze',
    city: 'Buenos Aires',
    state: '',
    latitude: -34.8222,
    longitude: -58.5358,
  },
  lifecycle+: {
    created: '2021-09-23',
  },
}

