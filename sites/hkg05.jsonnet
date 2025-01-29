local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'hkg05',
  annotations+: {
    probability: 0.25,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '35.220.156.178/32',
        },
        ipv6+: {
          address: '2600:1900:41a0:f002:8000:1::/128',
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
    country_code: 'HK',
    metro: 'hkg',
    city: 'Hong Kong',
    state: '',
    latitude: 22.3089,
    longitude: 113.915,
  },
  lifecycle+: {
    created: '2024-07-18',
  },
}

