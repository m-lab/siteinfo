local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'mad09',
  annotations+: {
    probability: 0.25,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.175.130.38/32',
        },
        ipv6+: {
          address: '2600:1901:8100:dbfc:0:3a::/128',
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
    country_code: 'ES',
    metro: 'mad',
    city: 'Madrid',
    state: '',
    latitude: 40.4719,
    longitude: -3.56264,
  },
  lifecycle+: {
    created: '2026-06-25',
  },
}
