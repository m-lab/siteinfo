local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'zrh02',
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
          address: nil,
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
    continent_code: 'EU',
    country_code: 'CH',
    metro: 'zrh',
    city: 'Zurich',
    state: '',
    latitude: 47.4647,
    longitude: 8.5492,
  },
  lifecycle+: {
    created: '2024-03-25',
  },
}

