local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'gru04',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '190.98.158.0/26',
    },
    ipv6+: {
      prefix: '2001:1498:1:960::/64',
    },
  },
  transit+: {
    provider: 'Telefonica International Wholesale Services',
    uplink: '10g',
    asn: 'AS12956',
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
    created: '2019-08-23',
  },
}
