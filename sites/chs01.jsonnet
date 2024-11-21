local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'chs01',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.139.106.82/32',
        },
        ipv6+: {
          address: '2600:1900:4020:5b68::/128',
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
          address: '35.211.73.225/32',
        },
        ipv6: {
          address: '2600:1900:4020:5b68:0:2::/128',
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
    metro: 'chs',
    city: 'Charleston',
    state: 'SC',
    latitude: 32.8986,
    longitude: -80.0405,
  },
  lifecycle+: {
    created: '2022-09-07',
    retired: '2024-07-11',
  },
}
