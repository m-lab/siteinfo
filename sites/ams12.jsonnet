local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'ams12',
  annotations+: {
    probability: 0.05,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.34.113.159/32',
        },
        ipv6+: {
          address: '2600:1900:4060:f014:0:36::/128',
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
    country_code: 'NL',
    metro: 'ams',
    city: 'Amsterdam',
    state: '',
    latitude: 52.3086,
    longitude: 4.76389,
  },
  lifecycle+: {
    created: '2026-06-25',
  },
}
