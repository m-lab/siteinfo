local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'dfw05',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '128.177.163.64/26',
    },
    ipv6+: {
      prefix: '2001:438:fffd:30::/64',
    },
  },
  transit+: {
    provider: 'Zayo Bandwidth',
    uplink: '10g',
    asn: 'AS6461',
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
