local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'cmh01',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.162.22.206/32',
        },
        ipv6+: {
          address: '2600:1901:8130:246c::/128',
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
    latitude: 39.9981,
    longitude: -82.8919,
  },
  lifecycle+: {
    created: '2022-09-08',
    retired: '2024-08-07',
  },
}
