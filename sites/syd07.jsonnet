local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'syd07',
  annotations+: {
    provider: 'gcp',
    probability: 0.3,
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '35.201.6.115/32',
        },
        ipv6+: {
          address: '2600:1900:40b0:16a4::/128',
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
    continent_code: 'OC',
    country_code: 'AU',
    metro: 'syd',
    city: 'Sydney',
    state: '',
    latitude: -33.9461,
    longitude: 151.177,
  },
  lifecycle+: {
    created: '2022-09-08',
  },
}
