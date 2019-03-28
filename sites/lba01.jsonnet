local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lba01',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '109.239.110.0/26',
    },
    ipv6+: {
      prefix: '2a00:1a80:1:8::/64',
    },
  },
  transit+: {
    provider: '(aq) networks limited',
    uplink: '1g',
    asn: 'AS33920',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'GB',
    metro: 'lba',
    city: 'Leeds',
    state: '',
    latitude: 53.8658,
    longitude: -1.6606,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
