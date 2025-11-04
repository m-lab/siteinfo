local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'dfw12',
  annotations+: {
    probability: 0.05,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.174.102.230/32',
        },
        ipv6+: {
          address: '2600:1901:8140:9cd3:8000::/128',
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
    metro: 'dfw',
    city: 'Dallas',
    state: 'TX',
    latitude: 32.8968,
    longitude: -97.038,
  },
  lifecycle+: {
    created: '2024-03-25',
  },
}

