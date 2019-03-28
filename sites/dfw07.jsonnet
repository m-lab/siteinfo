local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'dfw07',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '209.170.119.128/26',
    },
    ipv6+: {
      prefix: '2001:2030:0:1f::/64',
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
    metro: 'dfw',
    city: 'Dallas',
    state: 'TX',
    latitude: 32.8969,
    longitude: -97.0381,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
