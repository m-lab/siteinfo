local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'lhr10',
  annotations+: {
    probability: 0.5,
    provider: 'gcp',
  },
  machines: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.147.202.50/32',
        },
        ipv6+: {
          address: '2600:1900:40c0:f08e:8000::/128',
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
    country_code: 'GB',
    metro: 'lhr',
    city: 'London',
    state: '',
    latitude: 51.4775,
    longitude: -0.461389,
  },
  lifecycle+: {
    created: '2024-02-07',
  },
}
