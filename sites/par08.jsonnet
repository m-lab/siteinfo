local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'par08',
  annotations+: {
    probability: 0.25,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.155.83.192/32',
        },
        ipv6+: {
          address: '2600:1901:8120:8014::/128',
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
    created: '2022-09-08',
  },
}
