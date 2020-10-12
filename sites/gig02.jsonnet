local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'gig02',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '162.213.97.128/26',
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
    created: '2020-08-20',
  },
}