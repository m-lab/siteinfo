local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'arn03',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '213.242.86.64/26',
    },
    ipv6+: {
      prefix: '2001:4c08:2003:44::/64',
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
    country_code: 'SE',
    metro: 'arn',
    city: 'Stockholm',
    state: '',
    latitude: 59.6519,
    longitude: 17.9186,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
