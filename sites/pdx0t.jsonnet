local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'pdx0t',
  annotations+: {
    type: 'virtual',
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      disk: 'pd-standard',
      network+: {
        ipv4+: {
          address: '35.247.89.22/32',
        },
      },
      project: 'mlab-sandbox',
    },
  },
  transit+: {
    provider: 'Google LLC',
    uplink: '1g',
    asn: 'AS15169',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'pdx',
    city: 'Portland',
    state: 'OR',
    latitude: 45.5886,
    longitude: -122.5975,
  },
  lifecycle+: {
    created: '2022-01-14',
  },
}
