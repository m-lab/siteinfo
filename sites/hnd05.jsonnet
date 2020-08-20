local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'hnd05',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '61.200.88.0/26',
    },
    ipv6+: {
      prefix: '2001:218:2000:3::/64',
    },
  },
  transit+: {
    provider: 'NTT America, Inc.',
    uplink: '10g',
    asn: 'AS2914',
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
    created: '2020-08-20',
  },
}
