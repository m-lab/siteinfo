local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'gru02',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '177.136.80.192/26',
    },
    ipv6+: {
      prefix: '2804:680:15:1::/64',
    },
  },
  transit+: {
    provider: 'INTERNEXA BRASIL OPERADORA DE TELECOMUNICACOES S.A',
    uplink: '10g',
    asn: 'AS262589',
  },
  switch+: {
    flow_control: 'no',
  },
  location+: {
    continent_code: 'SA',
    country_code: 'BR',
    metro: 'gru',
    city: 'Sao Paulo',
    state: '',
    latitude: -23.4305,
    longitude: -46.473,
  },
  lifecycle+: {
    created: '2019-08-06',
  },
}
