local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'hkg06',
  annotations+: {
    probability: 0.5,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '35.220.144.189/32',
        },
        ipv6+: {
          address: '2600:1900:41a0:f002:0:45::/128',
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
          address: '34.92.44.133/32',
        },
        ipv6: {
          address: '2600:1900:41a0:f002:0:46::/128',
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
    country_code: 'HK',
    metro: 'hkg',
    city: 'Hong Kong',
    state: '',
    latitude: 22.3089,
    longitude: 113.915,
  },
  lifecycle+: {
    created: '2026-06-25',
  },
}
