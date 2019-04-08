local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mad04',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '77.67.115.64/26',
    },
    ipv6+: {
      prefix: '2001:668:1f:63::/64',
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
    metro: 'mad',
    city: 'Madrid',
    state: '',
    latitude: 40.4667,
    longitude: -3.5667,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
