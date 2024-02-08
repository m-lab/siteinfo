local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'jnb02',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.35.31.99/32',
        },
        ipv6+: {
          address: '2600:1900:8000:6b8:8000::/128',
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
    continent_code: 'AF',
    country_code: 'ZA',
    metro: 'jnb',
    city: 'Johannesburg',
    state: '',
    latitude: -26.2035,
    longitude: 28.1335,
  },
  lifecycle+: {
    created: '2024-02-07',
  },
}
