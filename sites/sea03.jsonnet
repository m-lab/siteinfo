local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'sea03',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '173.205.3.0/26',
    },
    ipv6+: {
      prefix: '2001:668:1f:1d::/64',
    },
  },
  transit+: {
    provider: 'GTT Communications Inc.',
    uplink: '1g',
    asn: 'AS3257',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'sea',
    city: 'Seattle',
    state: 'WA',
    latitude: 47.4489,
    longitude: -122.3094,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
