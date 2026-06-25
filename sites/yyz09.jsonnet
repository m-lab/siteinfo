local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'yyz09',
  annotations+: {
    probability: 0.5,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.130.171.192/32',
        },
        ipv6+: {
          address: '2600:1900:41e0:35a9:0:33::/128',
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
          address: '34.130.143.118/32',
        },
        ipv6: {
          address: '2600:1900:41e0:35a9:0:32::/128',
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
    metro: 'yyz',
    city: 'Toronto',
    state: '',
    latitude: 43.6797,
    longitude: -79.6227,
  },
  lifecycle+: {
    created: '2026-06-25',
  },
}
