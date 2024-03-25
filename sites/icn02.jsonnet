local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'icn02',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '192.168.0.1/32',
        },
        ipv6+: {
          address: null,
        },
      },
      project: 'mlab-oti',
    },
  },
  transit+: {
    provider: 'Google LLC',
    uplink: '1g',
    asn: 'AS396982',
  },
  location+: {
    continent_code: 'AS',
    country_code: 'KR',
    metro: 'icn',
    city: 'Seoul',
    state: '',
    latitude: 37.4633,
    longitude: 126.44,
  },
  lifecycle+: {
    created: '2024-03-25',
  },
}

