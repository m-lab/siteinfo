local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'dfw09',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.174.167.116/32',
        },
        ipv6+: {
          address: '2600:1901:8140:9cd3::/128',
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
          address: '34.174.104.110/32',
        },
        ipv6: {
          address: '2600:1901:8140:9cd3:0:6::/128',
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
          address: '34.174.134.185/32',
        },
        ipv6: {
          address: '2600:1901:8140:9cd3:0:8::/128',
        },
      },
      project: 'mlab-oti',
    },
    mlab4: {
      disk: 'pd-ssd',
      iface: 'ens4',
      model: 'n2-highcpu-4',
      network: {
        ipv4: {
          address: '34.174.31.191/32',
        },
        ipv6: {
          address: null,
        },
      },
      project: 'mlab-staging',
    },
  },
  transit+: {
    provider: 'Google LLC',
    uplink: '1g',
    asn: 'AS396982',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'dfw',
    city: 'Dallas',
    state: 'TX',
    latitude: 32.8969,
    longitude: -97.0381,
  },
  lifecycle+: {
    created: '2022-09-08',
  },
}
