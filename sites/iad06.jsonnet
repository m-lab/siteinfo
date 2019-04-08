local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'iad06',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '209.170.119.192/26',
    },
    ipv6+: {
      prefix: '2001:2030:0:29::/64',
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
    metro: 'iad',
    city: 'Washington',
    state: 'DC',
    latitude: 38.9444,
    longitude: -77.4558,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
