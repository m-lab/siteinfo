local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'slc02',
  annotations+: {
    probability: 0.05,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.106.79.133/32',
        },
        ipv6+: {
          address: '2600:1900:4170:2ab0:8000:1::/128',
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
    metro: 'slc',
    city: 'Salt Lake City',
    state: 'UT',
    latitude: 40.7884,
    longitude: -111.978,
  },
  lifecycle+: {
    created: '2024-07-18',
  },
}

