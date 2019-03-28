local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'den05',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '209.170.120.64/26',
    },
    ipv6+: {
      prefix: '2001:2030:0:3b::/64',
    },
  },
  transit+: {
    provider: 'Telia Company AB',
    uplink: '10g',
    asn: 'AS1299',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'den',
    city: 'Denver',
    state: 'CO',
    latitude: 39.8561,
    longitude: -104.6737,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
