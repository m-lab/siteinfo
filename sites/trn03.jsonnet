local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'trn03',
  annotations+: {
    probability: 0.25,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.17.52.81/32',
        },
        ipv6+: {
          address: '2600:1901:81b0:3a4:0:1::/128',
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
    country_code: 'IT',
    metro: 'trn',
    city: 'Turin',
    state: '',
    latitude: 45.2008,
    longitude: 7.64963,
  },
  lifecycle+: {
    created: '2023-08-02',
    retired: '2024-08-07',
  },
}

