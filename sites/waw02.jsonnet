local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'waw02',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.116.246.86/32',
        },
        ipv6+: {
          address: '2600:1900:4140:a999:8000::/128',
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
    country_code: 'PL',
    metro: 'waw',
    city: 'Warsaw',
    state: '',
    latitude: 52.1658,
    longitude: 20.9672,
  },
  lifecycle+: {
    created: '2024-03-25',
  },
}

