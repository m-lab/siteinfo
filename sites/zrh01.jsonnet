local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'zrh01',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.65.61.93/32',
        },
        ipv6+: {
          address: '2600:1900:4160:623a::/128',
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
          address: '34.65.123.191/32',
        },
        ipv6: {
          address: '2600:1900:4160:623a:0:6::/128',
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
          address: '34.65.175.253/32',
        },
        ipv6: {
          address: '2600:1900:4160:623a:0:4::/128',
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
    country_code: 'CH',
    metro: 'zrh',
    city: 'Zurich',
    state: '',
    latitude: 47.4647,
    longitude: 8.54917,
  },
  lifecycle+: {
    created: '2022-09-08',
    retired: '2024-07-11',
  },
}
