local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'eze02',
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
      prefix: '200.123.196.128/26',
    },
    ipv6+: {
      prefix: '2800:870:0:500::/64',
    },
  },
  transit+: {
    provider: 'TELECOM ITALIA SPARKLE S.p.A.',
    uplink: '10g',
    asn: 'AS6762',
  },
  location+: {
    continent_code: 'SA',
    country_code: 'AR',
    metro: 'eze',
    city: 'Buenos Aires',
    state: '',
    latitude: -34.8222,
    longitude: -58.5358,
  },
  lifecycle+: {
    created: '2021-08-31',
  },
}

