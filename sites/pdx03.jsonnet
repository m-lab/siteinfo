local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'pdx03',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.83.250.113/32',
        },
        ipv6+: {
          address: '2600:1900:4040:ed0d:8000:1::/128',
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
    metro: 'pdx',
    city: 'Portland',
    state: 'OR',
    latitude: 45.5886,
    longitude: -122.5975,
  },
  lifecycle+: {
    created: '2024-07-18',
  },
}

