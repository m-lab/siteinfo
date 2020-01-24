local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mad02',
  annotations+: {
    type: 'physical',
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
    latitude: 40.4667,
    longitude: -3.5667,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
