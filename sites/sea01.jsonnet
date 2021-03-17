local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'sea01',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '38.102.0.64/26',
    },
    ipv6+: {
      prefix: '2001:550:3200:1::/64',
    },
  },
  transit+: {
    provider: 'Cogent Communications',
    uplink: '10g',
    asn: 'AS174',
  },
  location+: {
    city: 'Seattle',
    continent_code: 'NA',
    country_code: 'US',
    metro: 'sea',
    state: 'WA',
    latitude: 47.4489,
    longitude: -122.3094,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
