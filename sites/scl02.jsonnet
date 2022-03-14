local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'scl02',
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
      prefix: '200.123.196.64/26',
    },
    ipv6+: {
      prefix: '2800:870:2000:100::/64',
    },
  },
  transit+: {
    provider: 'TELECOM ITALIA SPARKLE S.p.A.',
    uplink: '10g',
    asn: 'AS6762',
  },
  location+: {
    continent_code: 'SA',
    country_code: 'CL',
    metro: 'scl',
    city: 'Santiago',
    state: '',
    latitude: -33.3928,
    longitude: -70.7856,
  },
  lifecycle+: {
    created: '2021-08-26',
  },
}
