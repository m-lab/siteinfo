local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'lax08',
  annotations+: {
    provider: 'gcp',
  },
  machines: {
    mlab4: {
      disk: 'pd-standard',
      iface: 'ens4',
      model: 'n1-highcpu-4',
      network: {
        ipv4: {
          address: '34.102.101.93/32',
        },
        ipv6: {
          address: '2600:1900:4120:7571:0:1::/128',
        },
      },
      project: 'mlab-staging',
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
    created: '2022-04-25',
  },
}

