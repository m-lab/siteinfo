local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'icn01',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.64.61.249/32',
        },
        ipv6+: {
          address: '2600:1901:8180:af78::/128',
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
          address: '34.64.166.41/32',
        },
        ipv6: {
          address: '2600:1901:8180:af78:0:6::/128',
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
          address: '34.64.251.143/32',
        },
        ipv6: {
          address: '2600:1901:8180:af78:0:5::/128',
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
    continent_code: 'AS',
    country_code: 'KR',
    metro: 'icn',
    city: 'Seoul',
    state: '',
    latitude: 37.4633,
    longitude: 126.44,
  },
  lifecycle+: {
    created: '2022-09-08',
    retired: '2024-07-11',
  },
}
