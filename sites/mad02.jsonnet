local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mad02',
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
      prefix: '213.242.96.128/26',
    },
    ipv6+: {
      prefix: '2001:4c08:2003:3e::/64',
    },
  },
  transit+: {
    provider: 'Level 3 Parent, LLC',
    uplink: '10g',
    asn: 'AS3356',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'ES',
    metro: 'mad',
    city: 'Madrid',
    state: '',
    latitude: 40.4719,
    longitude: -3.56264,
  },
  lifecycle+: {
    created: '2019-01-01',
    retired: '2024-01-10',
  },
}
