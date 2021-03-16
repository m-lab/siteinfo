local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations: {
    type: 'physical',
  },
  lifecycle: {
    created: '2021-03-16',
  },
  location: {
    city: 'Amsterdam',
    continent_code: 'EU',
    country_code: 'NL',
    latitude: 52.3086,
    longitude: 4.76389,
    metro: {
      metro: 'ams',
    },
    state: '',
  },
  name: 'ams06',
  network: {
    ipv4: {
      prefix: '212.32.246.192/26',
    },
    ipv6: {
      prefix: '2001:1af8:4900:b070::/64',
    },
  },
  transit: {
    asn: 'AS60781',
    provider: 'LeaseWeb',
    uplink: '1g',
  },
}
