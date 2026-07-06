local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'trn05',
  annotations+: {
    probability: 0.25,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.17.146.105/32',
        },
        ipv6+: {
          address: '2600:1901:81b0:3a4:0:4d::/128',
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
          address: '34.17.179.141/32',
        },
        ipv6: {
          address: '2600:1901:81b0:3a4:0:4c::/128',
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
    metro: 'trn',
    city: 'Turin',
    state: '',
    latitude: 45.2008,
    longitude: 7.64963,
  },
  lifecycle+: {
    created: '2026-06-25',
  },
}
