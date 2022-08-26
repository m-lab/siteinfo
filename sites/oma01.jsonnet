local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'oma01',
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
          address: '104.197.205.150/32',
        },
        ipv6: {
          address: '2600:1900:4000:bcb9::/128',
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
    metro: 'oma',
    city: 'Omaha',
    state: 'IA',
    latitude: 41.3000,
    longitude: -95.8950,
  },
  lifecycle+: {
    created: '2022-08-26',
  },
}

