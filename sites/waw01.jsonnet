local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'waw01',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.118.70.240/32',
        },
        ipv6+: {
          address: '2600:1900:4140:a999::/128',
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
          address: '34.118.35.144/32',
        },
        ipv6: {
          address: '2600:1900:4140:a999:0:1::/128',
        },
      },
      project: 'mlab-oti',
    },
    mlab3: {
      disk: 'pd-ssd',
      iface: 'ens4',
      model: 'n2-highcpu-4',
      network: {
        ipv4: {
          address: '34.118.16.253/32',
        },
        ipv6: {
          address: '2600:1900:4140:a999:0:7::/128',
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
    continent_code: 'EU',
    country_code: 'PL',
    metro: 'waw',
    city: 'Warsaw',
    state: '',
    latitude: 52.1657,
    longitude: 20.9671,
  },
  lifecycle+: {
    created: '2022-09-08',
    retired: '2024-07-11',
  },
}
