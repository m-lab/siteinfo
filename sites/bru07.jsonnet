local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'bru07',
  annotations+: {
    probability: 0.25,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '35.187.26.49/32',
        },
        ipv6+: {
          address: '2600:1900:4010:a6d4:8000:1::/128',
        },
      },
      project: 'mlab-oti',
    },
  },
  transit+: {
    provider: 'Google LLC',
    uplink: '1g',
    asn: 'AS15169',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'BE',
    metro: 'bru',
    city: 'Brussels',
    state: '',
    latitude: 50.9014,
    longitude: 4.48444,
  },
  lifecycle+: {
    created: '2024-07-18',
  },
}

