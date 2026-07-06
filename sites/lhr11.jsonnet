local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'lhr11',
  annotations+: {
    probability: 0.05,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.39.71.242/32',
        },
        ipv6+: {
          address: '2600:1900:40c0:f08e:0:86::/128',
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
    continent_code: 'EU',
    country_code: 'GB',
    metro: 'lhr',
    city: 'London',
    state: '',
    latitude: 51.4775,
    longitude: -0.461389,
  },
  lifecycle+: {
    created: '2026-06-25',
  },
}
