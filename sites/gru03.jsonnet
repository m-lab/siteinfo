local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'gru03',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '200.123.198.128/26',
    },
    ipv6+: {
      prefix: null,
    },
  },
  transit+: {
    provider: 'TELECOM ITALIA SPARKLE S.p.A.',
    uplink: '10g',
    asn: 'AS6762',
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
    created: '2019-08-23',
  },
}
