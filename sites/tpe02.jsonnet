local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'tpe02',
  annotations+: {
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
