local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'cgk03',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.128.109.42/32',
        },
        ipv6+: {
          address: '2600:1901:8170:40d1:0:13f::/128',
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
          address: '34.101.60.47/32',
        },
        ipv6: {
          address: '2600:1901:8170:40d1:0:13d::/128',
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
          address: '34.101.160.151/32',
        },
        ipv6: {
          address: '2600:1901:8170:40d1:0:403::/128',
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
    country_code: 'ID',
    metro: 'cgk',
    city: 'Jakarta',
    state: '',
    latitude: -6.12556,
    longitude: 106.656,
  },
  lifecycle+: {
    created: '2026-06-25',
  },
}
