local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'bom05',
  annotations+: {
    probability: 0.25,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '35.200.190.37/32',
        },
        ipv6+: {
          address: '2600:1900:40a0:f2f2:0:11::/128',
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
          address: '35.200.235.108/32',
        },
        ipv6: {
          address: '2600:1900:40a0:f2f2:0:10::/128',
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
          address: '34.93.231.55/32',
        },
        ipv6: {
          address: '2600:1900:40a0:f2f2:0:f::/128',
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
    metro: 'bom',
    city: 'Mumbai',
    state: '',
    latitude: 19.0887,
    longitude: 72.8679,
  },
  lifecycle+: {
    created: '2023-11-13',
    retired: '2024-08-13',
  },
}
