local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'kix03',
  annotations+: {
    probability: 0.25,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.97.70.194/32',
        },
        ipv6+: {
          address: '2600:1900:41d0:8f23:0:d2::/128',
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
    latitude: 34.4305,
    longitude: 135.23,
  },
  lifecycle+: {
    created: '2026-06-25',
  },
}
