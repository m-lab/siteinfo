local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'mel03',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.129.47.51/32',
        },
        ipv6+: {
          address: '2600:1900:41c0:feec:0:43::/128',
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
          address: '34.129.103.250/32',
        },
        ipv6: {
          address: '2600:1900:41c0:feec:0:44::/128',
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
    continent_code: 'OC',
    country_code: 'AU',
    metro: 'mel',
    city: 'Melbourne',
    state: '',
    latitude: -37.6733,
    longitude: 144.843,
  },
  lifecycle+: {
    created: '2026-06-25',
  },
}
