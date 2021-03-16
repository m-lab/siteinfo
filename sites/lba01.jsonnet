local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations: {
    type: 'physical',
  },
  lifecycle: {
    created: '2021-03-16',
  },
  location: {
    city: 'Leeds',
    continent_code: 'EU',
    country_code: 'GB',
    latitude: 53.8658,
    longitude: -1.6606,
    metro: {
      metro: 'lba',
    },
    state: '',
  },
  name: 'lba01',
  network: {
    ipv4: {
      prefix: '109.239.110.0/26',
    },
    ipv6: {
      prefix: '2a00:1a80:1:8::/64',
    },
  },
  transit: {
    asn: 'AS33920',
    provider: '(aq) networks limited',
    uplink: '1g',
  },
}
