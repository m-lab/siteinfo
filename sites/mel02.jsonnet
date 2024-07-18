local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'mel02',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.129.5.156/32',
        },
        ipv6+: {
          address: '2600:1900:41c0:feec:8000:1::/128',
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
    continent_code: 'OC',
    country_code: 'AU',
    metro: 'mel',
    city: 'Melbourne',
    state: '',
    latitude: -37.6733,
    longitude: 144.8433,
  },
  lifecycle+: {
    created: '2024-07-18',
  },
}

