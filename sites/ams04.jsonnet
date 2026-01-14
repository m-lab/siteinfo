local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'ams04',
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
      prefix: '77.67.114.64/26',
    },
    ipv6+: {
      prefix: '2001:668:1f:5f::/64',
    },
  },
  transit+: {
    provider: 'GTT Communications Inc.',
    uplink: '10g',
    asn: 'AS3257',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'NL',
    metro: 'ams',
    city: 'Amsterdam',
    state: '',
    latitude: 52.3086,
    longitude: 4.76389,
  },
  lifecycle+: {
    created: '2019-01-01',
    retired: '2026-01-13',
  },
}
