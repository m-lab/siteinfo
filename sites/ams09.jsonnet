local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'ams09',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '162.213.96.128/26',
    },
    ipv6+: {
      prefix: null
    },
  },
  transit+: {
    provider: 'TELECOM ITALIA SPARKLE S.p.A.',
    uplink: '10g',
    asn: 'AS6762',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'NL',
    metro: 'ams',
    city: 'Amsterdam',
    state: '',
    latitude: 52.3086,
    longitude: 4.7639,
  },
  lifecycle+: {
    created: '2020-08-20',
  },
}
