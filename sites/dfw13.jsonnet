local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'dfw13',
  annotations+: {
    probability: 0.05,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.174.219.43/32',
        },
        ipv6+: {
          address: '2600:1901:8140:9cd3:0:8a::/128',
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
          address: '34.174.246.246/32',
        },
        ipv6: {
          address: '2600:1901:8140:9cd3:0:89::/128',
        },
      },
      project: 'mlab-oti',
    },
    mlab4: {
      iface: 'ens4',
      model: 'n2-highcpu-4',
      network: {
        ipv4: {
          address: '34.174.63.201/32',
        },
        ipv6: {
          address: '2600:1901:8140:31e:8000:1::/128',
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
    latitude: 32.8968,
    longitude: -97.038,
  },
  lifecycle+: {
    created: '2024-07-29',
  },
}

