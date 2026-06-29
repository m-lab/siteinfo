local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'jnb03',
  annotations+: {
    probability: 0.5,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      model: 'e2-highcpu-4',
      network+: {
        ipv4+: {
          address: '34.35.174.46/32',
        },
        ipv6+: {
          address: '2600:1900:8000:6b8:0:55::/128',
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
    latitude: -26.1392,
    longitude: 28.246,
  },
  lifecycle+: {
    created: '2026-06-25',
  },
}
