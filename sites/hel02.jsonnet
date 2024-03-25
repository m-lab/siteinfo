local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'hel02',
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
    country_code: 'FI',
    metro: 'hel',
    city: 'Helsinki',
    state: '',
    latitude: 60.3172,
    longitude: 24.9633,
  },
  lifecycle+: {
    created: '2024-03-25',
  },
}

