local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mil04',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '213.242.77.128/26',
    },
    ipv6+: {
      prefix: '2001:1900:2200:af::/64',
    },
  },
  transit+: {
    provider: 'Level 3 Parent, LLC',
    uplink: '1g',
    asn: 'AS3356',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'IT',
    metro: 'mil',
    city: 'Milan',
    state: '',
    latitude: 45.464,
    longitude: 9.1916,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
