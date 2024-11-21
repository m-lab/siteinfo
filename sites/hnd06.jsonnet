local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'hnd06',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.146.53.42/32',
        },
        ipv6+: {
          address: '2600:1900:4050:46::/128',
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
          address: '34.84.128.7/32',
        },
        ipv6: {
          address: '2600:1900:4050:46:0:3::/128',
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
          address: '34.84.73.144/32',
        },
        ipv6: {
          address: '2600:1900:4050:46:0:4::/128',
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
    country_code: 'JP',
    metro: 'hnd',
    city: 'Tokyo',
    state: '',
    latitude: 35.5533,
    longitude: 139.781,
  },
  lifecycle+: {
    created: '2022-09-08',
    retired: '2024-02-07',
  },
}
