local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'mil10',
  annotations+: {
    probability: 0.25,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.154.251.10/32',
        },
        ipv6+: {
          address: '2600:1901:8110:97b:0:30::/128',
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
          address: '34.154.106.71/32',
        },
        ipv6: {
          address: '2600:1901:8110:97b:0:31::/128',
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
    country_code: 'IT',
    metro: 'mil',
    city: 'Milan',
    state: '',
    latitude: 45.4494,
    longitude: 9.2783,
  },
  lifecycle+: {
    created: '2026-06-25',
  },
}
