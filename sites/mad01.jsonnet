local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2012-02-24',
    retired: '2017-08-02',
  },
  location+: {
    city: 'Madrid',
    continent_code: 'EU',
    country_code: 'ES',
    latitude: 40.4667,
    longitude: -3.5667,
    metro: 'mad',
    state: '',
  },
  name: 'mad01',
  machines+: {
    mlab1+: {
      model: r630,
    },
    mlab2+: {
      model: r630,
    },
    mlab3+: {
      model: r630,
    },
    mlab4+: {
      model: r630,
    },
  },
  network+: {
    ipv4+: {
      prefix: '213.200.103.128/26',
    },
    ipv6+: {
      prefix: '2001:668:1f:16::/64',
    },
  },
  transit+: {
    asn: 'AS3257',
    provider: 'GTT Communications',
    uplink: '1g',
  },
}
