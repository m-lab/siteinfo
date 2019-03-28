local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'bru02',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '212.3.248.192/26',
    },
    ipv6+: {
      prefix: '2001:4c08:2003:45::/64',
    },
  },
  transit+: {
    provider: 'Level 3 Parent, LLC',
    uplink: '1g',
    asn: 'AS3356',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'BE',
    metro: 'bru',
    city: 'Brussels',
    state: '',
    latitude: 50.4974,
    longitude: 3.3528,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
