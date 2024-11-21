local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'lax0t',
  annotations+: {
    type: 'virtual',
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.94.127.235/32',
        },
        ipv6+: {
          address: '2600:1900:4120:8f83:8000:1::/128',
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
    longitude: -118.408,
  },
  lifecycle+: {
    created: '2022-02-17',
  },
}
