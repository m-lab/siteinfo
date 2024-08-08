local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'bru06',
  annotations+: {
    probability: 0.5,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.79.58.167/32',
        },
        ipv6+: {
          address: '2600:1900:4010:a6d4::/128',
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
    latitude: 50.4974,
    longitude: 3.3528,
  },
  lifecycle+: {
    created: '2022-03-02',
    retired: '2024-08-07',
  },
}
