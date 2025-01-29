local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'mad08',
  annotations+: {
    probability: 0.25,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.175.148.237/32',
        },
        ipv6+: {
          address: '2600:1901:8100:dbfc:8000:1::/128',
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
    country_code: 'ES',
    metro: 'mad',
    city: 'Madrid',
    state: '',
    latitude: 40.4719,
    longitude: -3.56264,
  },
  lifecycle+: {
    created: '2024-07-18',
  },
}

