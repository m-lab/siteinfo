local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'sea07',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '209.170.110.128/26',
    },
    ipv6+: {
      prefix: '2001:2030:0:a::/64',
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
