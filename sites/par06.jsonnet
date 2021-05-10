local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'par06',
  annotations+: {
    type: 'physical',
  },
  machines+: {
    mlab1+: {
      model: r630,
    },
    mlab2+: {
      model: r630,
    },
    mlab3+: {
      model: r630,
    },
    mlab4+: {
      model: r630,
    },
  },
  network+: {
    ipv4+: {
      prefix: '162.213.97.0/26',
    },
    ipv6+: {
      prefix: '2001:41a8:205::/64',
    },
  },
  transit+: {
    provider: 'TELECOM ITALIA SPARKLE S.p.A.',
    uplink: '10g',
    asn: 'AS6762',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'FR',
    metro: 'par',
    city: 'Paris',
    state: '',
    latitude: 48.8584,
    longitude: 2.349,
  },
  lifecycle+: {
    created: '2020-08-20',
  },
}
