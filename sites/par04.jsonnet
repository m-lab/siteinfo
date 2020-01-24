local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'par04',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '77.67.119.128/26',
    },
    ipv6+: {
      prefix: '2001:668:1f:6b::/64',
    },
  },
  transit+: {
    provider: 'GTT Communications Inc.',
    uplink: '10g',
    asn: 'AS3257',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'FR',
    metro: 'par',
    city: 'Paris',
    state: '',
    latitude: 48.8584,
    longitude: 2.349,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
