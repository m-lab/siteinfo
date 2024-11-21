local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'iad07',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.85.166.60/32',
        },
        ipv6+: {
          address: '2600:1900:4090:5709::/128',
        },
      },
      project: 'mlab-oti',
    },
    mlab2: {
      disk: 'pd-ssd',
      iface: 'ens4',
      model: 'n2-highcpu-4',
      network: {
        ipv4: {
          address: '35.212.126.50/32',
        },
        ipv6: {
          address: '2600:1900:4090:5709:0:1::/128',
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
    metro: 'iad',
    city: 'Washington',
    state: 'DC',
    latitude: 38.9445,
    longitude: -77.4558,
  },
  lifecycle+: {
    created: '2022-03-02',
    retired: '2024-02-07',
  },
}
