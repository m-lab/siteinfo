local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'gru05',
  annotations+: {
    probability: 0.5,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.151.220.77/32',
        },
        ipv6+: {
          address: '2600:1900:40f0:7602::/128',
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
          address: '34.95.184.44/32',
        },
        ipv6: {
          address: '2600:1900:40f0:7602:0:1::/128',
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
          address: '34.151.210.91/32',
        },
        ipv6: {
          address: '2600:1900:40f0:7602:0:2::/128',
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
    continent_code: 'SA',
    country_code: 'BR',
    metro: 'gru',
    city: 'Sao Paulo',
    state: '',
    latitude: -23.4322,
    longitude: -46.4692,
  },
  lifecycle+: {
    created: '2022-09-08',
    retired: '2024-07-11',
  },
}
