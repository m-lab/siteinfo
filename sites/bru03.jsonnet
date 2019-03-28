local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'bru03',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '62.115.229.192/26',
    },
    ipv6+: {
      prefix: '2001:2030:0:39::/64',
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
    metro: 'bru',
    city: 'Brussels',
    state: '',
    latitude: 50.4974,
    longitude: 3.3528,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
