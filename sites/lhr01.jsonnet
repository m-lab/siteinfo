local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2021-03-16',
  },
  location+: {
    city: 'London',
    continent_code: 'EU',
    country_code: 'GB',
    latitude: 51.4697,
    longitude: -0.4514,
    metro: 'lhr',
    state: '',
  },
  name: 'lhr01',
  network+: {
    ipv4+: {
      prefix: '217.163.1.64/26',
    },
    ipv6+: {
      prefix: '2001:4c08:2003:3::/64',
    },
  },
  transit+: {
    asn: 'AS3356',
    provider: 'Level 3 Parent, LLC',
    uplink: '1g',
  },
}
