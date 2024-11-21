local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'par09',
  annotations+: {
    probability: 0.5,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.155.249.189/32',
        },
        ipv6+: {
          address: '2600:1901:8120:8014:8000:1::/128',
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
    country_code: 'FR',
    metro: 'par',
    city: 'Paris',
    state: '',
    latitude: 49.0097,
    longitude: 2.54778,
  },
  lifecycle+: {
    created: '2024-07-18',
  },
}

