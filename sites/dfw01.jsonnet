local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'dfw01',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '38.107.216.0/26',
    },
    ipv6+: {
      prefix: '2001:550:2000::/64',
    },
  },
  transit+: {
    provider: 'Cogent Communications',
    uplink: '10g',
    asn: 'AS174',
  },
  location+: {
    city: 'Dallas',
    continent_code: 'NA',
    country_code: 'US',
    metro: 'dfw',
    state: 'TX',
    latitude: 32.8969,
    longitude: -97.0381,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
