local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'mel01',
  annotations+: {
    provider: 'gcp',
    probability: 0.3,
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.129.235.132/32',
        },
        ipv6+: {
          address: '2600:1900:41c0:feec::/128',
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
    created: '2022-09-08',
  },
}
