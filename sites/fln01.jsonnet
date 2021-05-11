local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'fln01',
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
      prefix: '200.237.203.0/26',
    },
    ipv6+: {
      prefix: '2801:80:a88:4006::/64',
    },
  },
  transit+: {
    provider: 'Universidade Federal de Santa Catarina',
    uplink: '10g',
    asn: 'AS11242',
  },
  location+: {
    continent_code: 'SA',
    country_code: 'BR',
    metro: 'fln',
    city: 'Florianopolis',
    state: '',
    latitude: -27.6685,
    longitude: -48.546,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
