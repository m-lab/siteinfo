local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'waw03',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.116.185.232/32',
        },
        ipv6+: {
          address: '2600:1900:4140:a999:0:69::/128',
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
          address: '34.116.170.177/32',
        },
        ipv6: {
          address: '2600:1900:4140:a999:0:6a::/128',
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
    created: '2026-06-25',
  },
}
