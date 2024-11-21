local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'lhr09',
  annotations+: {
    type: 'virtual',
    provider: 'gcp',
  },
  machines: {
    mlab1: {
      disk: 'pd-ssd',
      iface: 'ens4',
      model: 'n1-highcpu-4',
      project: 'mlab-oti',
      network+: {
        ipv4+: {
          address: '35.189.86.149/32',
        },
        ipv6+: {
          address: '2600:1900:40c0:f08e:0:1::/128',
        },
      },
    },
  },
  transit+: {
    provider: 'Google LLC',
    uplink: '1g',
    asn: 'AS15169',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'GB',
    metro: 'lhr',
    city: 'London',
    state: '',
    latitude: 51.4775,
    longitude: -0.461389,
  },
  lifecycle+: {
    created: '2022-03-02',
    retired: '2024-02-07',
  },
}
