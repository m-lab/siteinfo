local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mrs03',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '212.73.211.64/26',
    },
    ipv6+: {
      prefix: '2001:4c08:2003:38::/64',
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
    metro: 'mrs',
    city: 'Marseille',
    state: '',
    latitude: 43.4366,
    longitude: 5.215,
  },
  lifecycle+: {
    created: '2020-03-04',
  },
}
