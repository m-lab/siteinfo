local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mrs03',
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
      prefix: '162.213.96.192/26',
    },
    ipv6+: {
      prefix: '2001:41a8:244::/64',
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
    metro: 'mrs',
    city: 'Marseille',
    state: '',
    latitude: 43.4393,
    longitude: 5.22142,
  },
  lifecycle+: {
    created: '2020-08-20',
    retired: '2023-10-06',
  },
}
