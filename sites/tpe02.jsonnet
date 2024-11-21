local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'tpe02',
  annotations+: {
    probability: 0.5,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '35.194.150.141/32',
        },
        ipv6+: {
          address: '2600:1900:4030:ddef:0:1::/128',
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
          address: '34.80.84.0/32',
        },
        ipv6: {
          address: '2600:1900:4030:ddef:0:5::/128',
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
    country_code: 'TW',
    metro: 'tpe',
    city: 'Taipei',
    state: '',
    latitude: 25.0777,
    longitude: 121.233,
  },
  lifecycle+: {
    created: '2022-03-02',
    retired: '2024-08-07',
  },
}
