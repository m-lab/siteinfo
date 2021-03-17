local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: null,
    retired: '2017-08-02',
  },
  location+: {
    city: 'Madrid',
    continent_code: 'EU',
    country_code: 'ES',
    latitude: 40.4667,
    longitude: -3.5667,
    metro: 'mad',
    state: '',
  },
  name: 'mad01',
  network+: {
    ipv4+: {
      prefix: '213.200.103.128/26',
    },
    ipv6+: {
      prefix: '2001:668:1f:16::/64',
    },
  },
  transit+: {
    asn: 'AS3257',
    provider: 'GTT Communications',
    uplink: '1g',
  },
}
