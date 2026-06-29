local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'las03',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.16.181.165/32',
        },
        ipv6+: {
          address: '2600:1900:4180:ed51:0:3c::/128',
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
    latitude: 36.0801,
    longitude: -115.152,
  },
  lifecycle+: {
    created: '2026-06-25',
  },
}
