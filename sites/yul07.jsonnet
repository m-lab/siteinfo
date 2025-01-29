local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'yul07',
  annotations+: {
    probability: 0.25,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.95.21.36/32',
        },
        ipv6+: {
          address: '2600:1900:40e0:7615::/128',
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
          address: '35.215.55.247/32',
        },
        ipv6: {
          address: '2600:1900:40e0:7615:0:1::/128',
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
    country_code: 'CA',
    metro: 'yul',
    city: 'Montreal',
    state: '',
    latitude: 45.4657,
    longitude: -73.7455,
  },
  lifecycle+: {
    created: '2022-09-08',
    retired: '2024-07-11',
  },
}
