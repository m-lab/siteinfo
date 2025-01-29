local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'yyz08',
  annotations+: {
    probability: 0.25,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.130.103.198/32',
        },
        ipv6+: {
          address: '2600:1900:41e0:35a9:8000:1::/128',
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
    continent_code: 'NA',
    country_code: 'CA',
    metro: 'yyz',
    city: 'Toronto',
    state: '',
    latitude: 43.6797,
    longitude: -79.6227,
  },
  lifecycle+: {
    created: '2024-07-18',
  },
}

