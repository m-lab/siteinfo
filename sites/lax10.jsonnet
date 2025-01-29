local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'lax10',
  annotations+: {
    probability: 0.25,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.102.107.77/32',
        },
        ipv6+: {
          address: '2600:1900:4120:30e8:8000::/128',
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
    continent_code: 'NA',
    country_code: 'US',
    metro: 'lax',
    city: 'Los Angeles',
    state: 'CA',
    latitude: 33.9425,
    longitude: -118.408,
  },
  lifecycle+: {
    created: '2024-03-25',
  },
}

