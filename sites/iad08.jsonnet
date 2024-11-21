local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'iad08',
  annotations+: {
    provider: 'gcp',
  },
  machines: {
    mlab3: {
      disk: 'pd-ssd',
      iface: 'ens4',
      model: 'n1-highcpu-4',
      network: {
        ipv4: {
          address: '34.145.210.246/32',
        },
        ipv6: {
          address: '2600:1900:4090:6589:0:1::/128',
        },
      },
      project: 'mlab-staging',
    },
    mlab4: {
      disk: 'pd-ssd',
      iface: 'ens4',
      model: 'n2-highcpu-4',
      network: {
        ipv4: {
          address: '34.85.171.228/32',
        },
        ipv6: {
          address: '2600:1900:4090:6589:0:1d::/128',
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
    latitude: 38.9445,
    longitude: -77.4558,
  },
  lifecycle+: {
    created: '2022-03-04',
  },
}

