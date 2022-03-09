local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'iad08',
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
          address: '35.245.211.241/32',
        },
        ipv6: {
          address: null,
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
    metro: 'iad',
    city: 'Washington',
    state: 'DC',
    latitude: 38.9444,
    longitude: -77.4558,
  },
  lifecycle+: {
    created: '2022-03-04',
  },
}

