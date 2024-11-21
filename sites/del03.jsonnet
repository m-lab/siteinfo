local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'del03',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.131.204.19/32',
        },
        ipv6+: {
          address: '2600:1900:41b0:a72::/128',
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
    created: '2022-09-08',
    retired: '2024-02-07',
  },
}
