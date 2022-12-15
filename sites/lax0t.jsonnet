local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'lax0t',
  annotations+: {
    type: 'virtual',
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      disk: 'pd-standard',
      network+: {
        ipv4+: {
          address: '34.94.47.22/32',
        },
      },  
      project: 'mlab-sandbox',
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
    longitude: -118.4072,
  },
  lifecycle+: {
    created: '2022-02-17',
  },
}
