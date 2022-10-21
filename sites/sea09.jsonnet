local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'sea09',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.105.122.11/32',
        },
        ipv6+: {
          address: '2600:1900:4040:ed0d::/128',
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
    metro: 'sea',
    city: 'Seattle',
    state: 'WA',
    latitude: 47.4489,
    longitude: -122.3094,
  },
  lifecycle+: {
    created: '2022-03-02',
    retired: '2022-10-21',
  },
}
