local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'prg02',
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
      prefix: '195.122.159.128/26',
    },
    ipv6+: {
      prefix: '2001:4c08:2003:42::/64',
    },
  },
  transit+: {
    provider: 'Level 3 Parent, LLC',
    uplink: '10g',
    asn: 'AS3356',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'CZ',
    metro: 'prg',
    city: 'Prague',
    state: '',
    latitude: 50.0833,
    longitude: 14.4167,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
