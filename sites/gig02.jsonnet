local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'gig02',
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
      prefix: '162.213.97.128/26',
    },
    ipv6+: {
      prefix: '2800:870:1100:1::/64',
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
    retired: '2023-10-06',
  },
}
