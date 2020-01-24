local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'par02',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '212.73.231.192/26',
    },
    ipv6+: {
      prefix: '2001:4c08:2003:3f::/64',
    },
  },
  transit+: {
    provider: 'Level 3 Parent, LLC',
    uplink: '10g',
    asn: 'AS3356',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'FR',
    metro: 'par',
    city: 'Paris',
    state: '',
    latitude: 48.8584,
    longitude: 2.349,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
