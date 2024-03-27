local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'yul08',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.47.17.153/32',
        },
        ipv6+: {
          address: '2600:1900:40e0:7615:8000::/128',
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
    country_code: 'CA',
    metro: 'yul',
    city: 'Montreal',
    state: '',
    latitude: 45.4576,
    longitude: -73.7497,
  },
  lifecycle+: {
    created: '2024-03-25',
  },
}

