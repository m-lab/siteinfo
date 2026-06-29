local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'icn03',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.64.237.201/32',
        },
        ipv6+: {
          address: '2600:1901:8180:af78:0:13d::/128',
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
          address: '34.47.75.131/32',
        },
        ipv6: {
          address: '2600:1901:8180:af78:0:13e::/128',
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
    country_code: 'KR',
    metro: 'icn',
    city: 'Seoul',
    state: '',
    latitude: 37.4633,
    longitude: 126.44,
  },
  lifecycle+: {
    created: '2026-06-25',
  },
}
