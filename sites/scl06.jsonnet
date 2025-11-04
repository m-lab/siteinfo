local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'scl06',
  annotations+: {
    probability: 0.05,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.176.183.137/32',
        },
        ipv6+: {
          address: '2600:1901:4010:c39:8000::/128',
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
    continent_code: 'SA',
    country_code: 'CL',
    metro: 'scl',
    city: 'Santiago',
    state: '',
    latitude: -33.3928,
    longitude: -70.7856,
  },
  lifecycle+: {
    created: '2024-02-07',
  },
}
