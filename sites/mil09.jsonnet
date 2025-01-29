local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'mil09',
  annotations+: {
    probability: 0.25,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.154.147.5/32',
        },
        ipv6+: {
          address: '2600:1901:8110:97b:8000:1::/128',
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
    country_code: 'IT',
    metro: 'mil',
    city: 'Milan',
    state: '',
    latitude: 45.4494,
    longitude: 9.2783,
  },
  lifecycle+: {
    created: '2024-07-18',
  },
}

