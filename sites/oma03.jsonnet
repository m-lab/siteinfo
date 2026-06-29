local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'oma03',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.66.147.204/32',
        },
        ipv6+: {
          address: '2600:1900:4000:2264:0:5c::/128',
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
    metro: 'oma',
    city: 'Omaha',
    state: 'IA',
    latitude: 41.3032,
    longitude: -95.8941,
  },
  lifecycle+: {
    created: '2026-06-25',
  },
}
