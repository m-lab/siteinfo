local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'tpe02',
  annotations+: {
    type: 'virtual',
    provider: 'gcp',
  },
  machines: {
    mlab1: {
      disk: 'sda',
      iface: 'ens4',
      model: 'n1-highcpu-4',
      project: 'mlab-oti',
    },
  },
  network+: {
    ipv4+: {
      prefix: '35.194.150.141/32',
    },
    ipv6+: {
      prefix: '2600:1900:4030:ddef::/128',
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
    latitude: 25.0778,
    longitude: 121.224,
  },
  lifecycle+: {
    created: '2022-03-02',
  },
}

