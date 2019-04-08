local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'iad05',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '4.35.238.192/26',
    },
    ipv6+: {
      prefix: '2001:1900:2200:46::/64',
    },
  },
  transit+: {
    provider: 'Level 3 Parent, LLC',
    uplink: '1g',
    asn: 'AS3356',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'iad',
    city: 'Washington',
    state: 'DC',
    latitude: 38.9444,
    longitude: -77.4558,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
