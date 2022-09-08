local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'hel01',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '35.228.103.192/32',
        },
        ipv6+: {
          address: '2600:1900:4150:c32e::/128',
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
    country_code: 'FI',
    metro: 'hel',
    city: 'Helsinki',
    state: '',
    latitude: 60.3172,
    longitude: 24.9633,
  },
  lifecycle+: {
    created: '2022-09-08',
  },
}
