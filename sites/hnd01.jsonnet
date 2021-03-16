local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations: {
    type: 'physical',
  },
  lifecycle: {
    created: '2021-03-16',
  },
  location: {
    city: 'Tokyo',
    continent_code: 'AS',
    country_code: 'JP',
    latitude: 35.5522,
    longitude: 139.78,
    metro: {
      metro: 'hnd',
    },
    state: '',
  },
  name: 'hnd01',
  network: {
    ipv4: {
      prefix: '203.178.130.192/26',
    },
    ipv6: {
      prefix: '2001:200:0:b801::/64',
    },
  },
  transit: {
    asn: 'AS2500',
    provider: 'WIDE Project',
    uplink: '1g',
  },
}
