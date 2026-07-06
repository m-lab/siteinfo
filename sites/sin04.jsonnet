local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'sin04',
  annotations+: {
    probability: 0.05,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.87.8.254/32',
        },
        ipv6+: {
          address: '2600:1900:4080:5afb:0:3b::/128',
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
    country_code: 'SG',
    metro: 'sin',
    city: 'Singapore',
    state: '',
    latitude: 1.35019,
    longitude: 103.994,
  },
  lifecycle+: {
    created: '2026-06-25',
  },
}
