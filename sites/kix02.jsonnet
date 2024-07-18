local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'kix02',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.97.121.235/32',
        },
        ipv6+: {
          address: '2600:1900:41d0:8f23:8000:1::/128',
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
    metro: 'kix',
    city: 'Osaka',
    state: '',
    latitude: 34.4342,
    longitude: 135.2328,
  },
  lifecycle+: {
    created: '2024-07-18',
  },
}

