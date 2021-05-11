local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mad04',
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
      prefix: '77.67.115.64/26',
    },
    ipv6+: {
      prefix: '2001:668:1f:63::/64',
    },
  },
  transit+: {
    provider: 'GTT Communications Inc.',
    uplink: '10g',
    asn: 'AS3257',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'ES',
    metro: 'mad',
    city: 'Madrid',
    state: '',
    latitude: 40.4667,
    longitude: -3.5667,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
