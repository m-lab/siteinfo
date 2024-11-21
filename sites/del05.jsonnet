local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'del05',
  annotations+: {
    probability: 0.5,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.131.115.191/32',
        },
        ipv6+: {
          address: '2600:1900:41b0:a72:8000::/128',
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
    continent_code: 'AS',
    country_code: 'IN',
    metro: 'del',
    city: 'New Delhi',
    state: '',
    latitude: 28.5665,
    longitude: 77.1031,
  },
  lifecycle+: {
    created: '2024-02-07',
  },
}
