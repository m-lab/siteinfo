local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2021-03-16',
  },
  location+: {
    city: 'San Francisco',
    continent_code: 'NA',
    country_code: 'US',
    latitude: 37.3833,
    longitude: -122.0667,
    metro: 'nuq',
    state: '',
  },
  name: 'nuq01',
  network+: {
    ipv4+: {
      prefix: '64.9.225.128/26',
    },
    ipv6+: {
      prefix: '2604:ca00:f000::/64',
    },
  },
  transit+: {
    asn: 'AS36492',
    provider: 'Google, LLC',
    uplink: '1g',
  },
}
