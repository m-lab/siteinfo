local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lim04',
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
      prefix: '190.108.95.192/26',
    },
    ipv6+: {
      prefix: '2800:650:300:1::/64',
    },
  },
  transit+: {
    provider: 'INTERNEXA PERU S.A',
    uplink: '10g',
    asn: 'AS28032',
  },
  location+: {
    continent_code: 'SA',
    country_code: 'PE',
    metro: 'lim',
    city: 'Lima',
    state: '',
    latitude: -12.0219,
    longitude: -77.1144,
  },
  lifecycle+: {
    created: '2021-10-06',
  },
}

