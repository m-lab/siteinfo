local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'zrh03',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.65.244.120/32',
        },
        ipv6+: {
          address: '2600:1900:4160:623a:0:78::/128',
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
          address: '34.65.177.104/32',
        },
        ipv6: {
          address: '2600:1900:4160:623a:0:79::/128',
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
    country_code: 'CH',
    metro: 'zrh',
    city: 'Zurich',
    state: '',
    latitude: 47.4647,
    longitude: 8.54917,
  },
  lifecycle+: {
    created: '2026-06-25',
  },
}
