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
          address: '104.196.56.215/32',
        },
        ipv6+: {
          address: '2600:1900:4020:5b68:8000::/128',
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

