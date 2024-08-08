local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'las01',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.125.158.248/32',
        },
        ipv6+: {
          address: '2600:1900:4180:ed51::/128',
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
    continent_code: 'NA',
    country_code: 'US',
    metro: 'las',
    city: 'Las Vegas',
    state: 'NV',
    latitude: 36.08,
    longitude: -115.1522,
  },
  lifecycle+: {
    created: '2022-09-08',
    retired: '2024-08-07',
  },
}
