local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'syd04',
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
      prefix: '67.199.149.64/26',
    },
    ipv6+: {
      prefix: '2001:668:1f:fe1a::/64',
    },
  },
  transit+: {
    provider: 'GTT Communications Inc.',
    uplink: '10g',
    asn: 'AS3257',
  },
  location+: {
    continent_code: 'OC',
    country_code: 'AU',
    metro: 'syd',
    city: 'Sydney',
    state: '',
    latitude: -33.9461,
    longitude: 151.177,
  },
  lifecycle+: {
    created: '2022-01-19',
    retired: '2023-05-31',
  },
}
