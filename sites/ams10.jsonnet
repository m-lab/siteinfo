local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'ams10',
  annotations+: {
    provider: 'gcp',
    probability: 0.3,
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.91.170.199/32',
        },
        ipv6+: {
          address: '2600:1900:4060:f014::/128',
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
    country_code: 'NL',
    metro: 'ams',
    city: 'Amsterdam',
    state: '',
    latitude: 52.3086,
    longitude: 4.7639,
  },
  lifecycle+: {
    created: '2022-09-07',
  },
}
