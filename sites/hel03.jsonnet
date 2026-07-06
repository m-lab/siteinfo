local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'hel03',
  annotations+: {
    probability: 0.05,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '35.228.31.47/32',
        },
        ipv6+: {
          address: '2600:1900:4150:c32e:0:69::/128',
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
          address: '34.88.24.50/32',
        },
        ipv6: {
          address: '2600:1900:4150:c32e:0:68::/128',
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
    country_code: 'FI',
    metro: 'hel',
    city: 'Helsinki',
    state: '',
    latitude: 60.3172,
    longitude: 24.9633,
  },
  lifecycle+: {
    created: '2026-06-25',
  },
}
