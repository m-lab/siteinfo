local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2021-03-16',
  },
  location+: {
    city: 'Seattle',
    continent_code: 'NA',
    country_code: 'US',
    latitude: 47.4489,
    longitude: -122.3094,
    metro: 'sea',
    state: '',
  },
  name: 'sea06',
  network+: {
    ipv4+: {
      prefix: '64.74.15.192/26',
    },
    ipv6+: {
      prefix: '2600:c00:0:202::/64',
    },
  },
  transit+: {
    asn: 'AS14744',
    provider: 'Internap Holding LLC',
    uplink: '1g',
  },
}
