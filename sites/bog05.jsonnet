local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'bog05',
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
      prefix: '162.213.97.64/26',
    },
    ipv6+: {
      prefix: '2800:870:400:1::/64',
    },
  },
  transit+: {
    provider: 'TELECOM ITALIA SPARKLE S.p.A.',
    uplink: '10g',
    asn: 'AS6762',
  },
  location+: {
    continent_code: 'SA',
    country_code: 'CO',
    metro: 'bog',
    city: 'Bogota',
    state: '',
    latitude: 4.69715,
    longitude: -74.14329,
  },
  lifecycle+: {
    created: '2020-08-20',
  },
}
