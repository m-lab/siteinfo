local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'tpe03',
  annotations+: {
    probability: 0.25,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '35.236.187.114/32',
        },
        ipv6+: {
          address: '2600:1900:4030:ddef:8000:1::/128',
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
    created: '2024-07-18',
  },
}

