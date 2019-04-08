local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'hnd02',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '210.151.179.128/26',
    },
    ipv6+: {
      prefix: '2001:260:8a::/64',
    },
  },
  transit+: {
    provider: 'BIGLOBE Inc.',
    uplink: '10g',
    asn: 'AS2518',
  },
  location+: {
    continent_code: 'AS',
    country_code: 'JP',
    metro: 'hnd',
    city: 'Tokyo',
    state: '',
    latitude: 35.5522,
    longitude: 139.78,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
