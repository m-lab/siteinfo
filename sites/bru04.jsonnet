local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'bru04',
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
      prefix: '77.67.119.0/26',
    },
    ipv6+: {
      prefix: '2001:668:1f:69::/64',
    },
  },
  transit+: {
    provider: 'GTT Communications Inc.',
    uplink: '10g',
    asn: 'AS3257',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'BE',
    metro: 'bru',
    city: 'Brussels',
    state: '',
    latitude: 50.9014,
    longitude: 4.48444,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
