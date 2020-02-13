local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'hnd04',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '98.124.142.192/26',
    },
    ipv6+: {
      prefix: '2001:668:1f:e3::/64',
    },
  },
  transit+: {
    provider: 'GTT Communications Inc.',
    uplink: '10g',
    asn: 'AS3257',
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
    created: '2020-02-13',
  },
}
