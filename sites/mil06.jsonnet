local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mil06',
  annotations+: {
    type: 'physical',
  },
  machines+: {
    mlab1+: {
      model: 'r630',
    },
    mlab2+: {
      model: 'r630',
    },
    mlab3+: {
      model: 'r630',
    },
    mlab4+: {
      model: 'r630',
    },
  },
  network+: {
    ipv4+: {
      prefix: '162.213.96.64/26',
    },
    ipv6+: {
      prefix: '2001:41a8:28:4::/64',
    },
  },
  transit+: {
    provider: 'TELECOM ITALIA SPARKLE S.p.A.',
    uplink: '10g',
    asn: 'AS6762',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'IT',
    metro: 'mil',
    city: 'Milan',
    state: '',
    latitude: 45.4494,
    longitude: 9.2783,
  },
  lifecycle+: {
    created: '2019-07-06',
  },
}
