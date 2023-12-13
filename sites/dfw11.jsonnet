local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'dfw11',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.174.89.59/32',
        },
        ipv6+: {
          address: '2600:1901:8140:9cd3:0:25::/128',
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
          address: '34.174.138.130/32',
        },
        ipv6: {
          address: '2600:1901:8140:9cd3:0:24::/128',
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
          address: '34.174.24.56/32',
        },
        ipv6: {
          address: '2600:1901:8140:9cd3:0:26::/128',
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
    country_code: 'US',
    metro: 'dfw',
    city: 'Dallas',
    state: 'TX',
    latitude: 32.8969,
    longitude: -97.0381,
  },
  lifecycle+: {
    created: '2023-11-28',
    retired: '2023-12-13',
  },
}
