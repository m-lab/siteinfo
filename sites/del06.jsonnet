local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'del06',
  annotations+: {
    probability: 0.5,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.131.224.115/32',
        },
        ipv6+: {
          address: '2600:1900:41b0:a72:0:2da::/128',
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
          address: '34.131.140.176/32',
        },
        ipv6: {
          address: '2600:1900:41b0:a72:0:2d9::/128',
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
    country_code: 'IN',
    metro: 'del',
    city: 'New Delhi',
    state: '',
    latitude: 28.5665,
    longitude: 77.1031,
  },
  lifecycle+: {
    created: '2026-06-25',
  },
}
