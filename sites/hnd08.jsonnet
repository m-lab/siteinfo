local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'hnd08',
  annotations+: {
    probability: 0.5,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '35.243.65.76/32',
        },
        ipv6+: {
          address: '2600:1900:4050:46:0:8c::/128',
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
    country_code: 'JP',
    metro: 'hnd',
    city: 'Tokyo',
    state: '',
    latitude: 35.5533,
    longitude: 139.781,
  },
  lifecycle+: {
    created: '2026-06-25',
  },
}
