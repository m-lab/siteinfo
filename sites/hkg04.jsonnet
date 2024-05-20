local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'hkg04',
  annotations+: {
    probability: 0.5,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.150.68.57/32',
        },
        ipv6+: {
          address: '2600:1900:41a0:f002::/128',
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
    longitude: 113.9144,
  },
  lifecycle+: {
    created: '2022-09-08',
  },
}
