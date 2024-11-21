local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mpm02',
  annotations+: {
    donated: true,
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
      prefix: '197.235.0.192/26',
    },
    ipv6+: {
      prefix: '2c0f:f308:60:61f::/64',
    },
  },
  transit+: {
    asn: 'AS37223',
    provider: 'VM S.A',
    uplink: '10g',
  },
  location+: {
    continent_code: 'AF',
    country_code: 'MZ',
    metro: 'mpm',
    city: 'Maputo',
    state: '',
    latitude: -25.9208,
    longitude: 32.5726,
  },
  lifecycle+: {
    created: '2022-07-12',
  },
}
