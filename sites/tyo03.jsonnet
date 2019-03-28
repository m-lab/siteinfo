local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'tyo03',
  annotations+: {
    type: 'cloud',
  },
  machines+: {
    count: 1,
  },
  network+: {
    ipv4+: {
      prefix: '35.200.112.17/32',
    },
    ipv6+: {
      prefix: null,
    },
  },
  transit+: {
    provider: 'Google',
    uplink: '1g',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'tyo',
    city: 'Tokyo',
    state: '',
    latitude: 35.5522,
    longitude: 139.78,
  },
  lifecycle+: {
    created: '2018-01-01',
  },
}
