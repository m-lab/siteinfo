local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'bom07',
  annotations+: {
    probability: 0.25,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '35.234.220.203/32',
        },
        ipv6+: {
          address: '2600:1900:40a0:f2f2:0:77::/128',
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
    country_code: 'IN',
    metro: 'bom',
    city: 'Mumbai',
    state: '',
    latitude: 19.0887,
    longitude: 72.8679,
  },
  lifecycle+: {
    created: '2026-06-25',
  },
}
