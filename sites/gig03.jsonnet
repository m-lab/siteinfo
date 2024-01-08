local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'gig03',
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
      prefix: '189.91.98.64/26',
    },
    ipv6+: {
      prefix: '2804:680:501:b::/64',
    },
  },
  transit+: {
    provider: 'INTERNEXA BRASIL OPERADORA DE TELECOMUNICACOES S.A',
    uplink: '10g',
    asn: 'AS262589',
  },
  location+: {
    continent_code: 'SA',
    country_code: 'BR',
    metro: 'gig',
    city: 'Rio de Janeiro',
    state: '',
    latitude: -22.8052,
    longitude: -43.2588,
  },
  lifecycle+: {
    created: '2020-09-28',
    retired: '2023-10-16',
  },
}
