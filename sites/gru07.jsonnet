local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'gru07',
  annotations+: {
    probability: 0.25,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '35.199.88.233/32',
        },
        ipv6+: {
          address: '2600:1900:40f0:7602:0:8a::/128',
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
    continent_code: 'SA',
    country_code: 'BR',
    metro: 'gru',
    city: 'Sao Paulo',
    state: '',
    latitude: -23.4322,
    longitude: -46.4692,
  },
  lifecycle+: {
    created: '2026-06-25',
  },
}
