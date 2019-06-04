local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'prg02',
  annotations+: {
    type: 'physical',
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
    uplink: '1g',
    asn: 'AS3356',
  },
  switch+: {
    auto_negotiation: 'no',
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
