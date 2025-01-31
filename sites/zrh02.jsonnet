local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'zrh02',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.65.218.219/32',
        },
        ipv6+: {
          address: '2600:1900:4160:623a:8000::/128',
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
    country_code: 'CH',
    metro: 'zrh',
    city: 'Zurich',
    state: '',
    latitude: 47.4647,
    longitude: 8.54917,
  },
  lifecycle+: {
    created: '2024-03-25',
  },
}

