local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'chs02',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '192.168.0.1/32',
        },
        ipv6+: {
          address: null,
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
    metro: 'chs',
    city: 'Charleston',
    state: 'SC',
    latitude: 32.8986,
    longitude: -80.0406,
  },
  lifecycle+: {
    created: '2024-03-25',
  },
}

