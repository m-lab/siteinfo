local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'sea06',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '64.74.15.192/26',
    },
    ipv6+: {
      prefix: '2600:c00:0:202::/64',
    },
  },
  transit+: {
    provider: 'Internap Corporation',
    uplink: '1g',
    asn: 'AS14744',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'sea',
    city: 'Seattle',
    state: 'WA',
    latitude: 47.4489,
    longitude: -122.3094,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
