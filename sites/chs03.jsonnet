local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'chs03',
  annotations+: {
    probability: 0.05,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '35.237.229.42/32',
        },
        ipv6+: {
          address: '2600:1900:4020:5b68:0:2e5::/128',
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
    longitude: -80.0405,
  },
  lifecycle+: {
    created: '2026-06-25',
  },
}
