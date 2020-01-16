local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'fra04',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '62.67.198.192/26',
    },
    ipv6+: {
      prefix: '2001:4c08:2003:40::/64',
    },
  },
  transit+: {
    provider: 'Level 3 Parent, LLC',
    uplink: '10g',
    asn: 'AS3356',
  },
  switch+: {
    auto_negotiation: 'no',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'DE',
    metro: 'fra',
    city: 'Frankfurt',
    state: '',
    latitude: 50.0379,
    longitude: 8.5622,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
