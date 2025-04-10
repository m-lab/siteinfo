local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'hnd07',
  annotations+: {
    probability: 0.25,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.84.179.201/32',
        },
        ipv6+: {
          address: '2600:1900:4050:46:8000::/128',
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
    country_code: 'JP',
    metro: 'hnd',
    city: 'Tokyo',
    state: '',
    latitude: 35.5533,
    longitude: 139.781,
  },
  lifecycle+: {
    created: '2024-02-07',
  },
}
