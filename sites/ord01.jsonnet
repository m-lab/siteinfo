local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'ord01',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '4.71.251.128/26',
    },
    ipv6+: {
      prefix: '2001:1900:3001:b::/64',
    },
  },
  transit+: {
    provider: 'Level 3 Parent, LLC',
    uplink: '10g',
    asn: 'AS3356',
  },
  location+: {
    city: 'Chicago',
    continent_code: 'NA',
    country_code: 'US',
    metro: 'ord',
    state: 'IL',
    latitude: 41.9786,
    longitude: -87.9047,
  },
  lifecycle+: {
    created: '2009-07-09',
    retired: '2019-06-03',
  },
}
