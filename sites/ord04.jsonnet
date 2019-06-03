local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'ord04',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '173.205.3.192/26',
    },
    ipv6+: {
      prefix: '2001:668:1f:20::/64',
    },
  },
  transit+: {
    provider: 'GTT Communications Inc.',
    uplink: '10g',
    asn: 'AS3257',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'ord',
    city: 'Chicago',
    state: 'IL',
    latitude: 41.9786,
    longitude: -87.9047,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
