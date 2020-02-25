local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mrs02',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '154.14.11.192/26',
    },
    ipv6+: {
      prefix: '2001:668:1f:e4::/64',
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
    metro: 'mrs',
    city: 'Marseille',
    state: '',
    latitude: 43.4366,
    longitude: 5.215,
  },
  lifecycle+: {
    created: '2020-02-25',
  },
}
