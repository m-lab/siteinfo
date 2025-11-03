local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'cmh02',
  annotations+: {
    probability: 0.05,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.162.87.46/32',
        },
        ipv6+: {
          address: '2600:1901:8130:246c:8000:1::/128',
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
    metro: 'cmh',
    city: 'Columbus',
    state: 'OH',
    latitude: 39.998,
    longitude: -82.8919,
  },
  lifecycle+: {
    created: '2024-07-18',
  },
}

