local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations: {
    type: 'physical',
  },
  lifecycle: {
    created: '2021-03-16',
  },
  location: {
    city: 'Toronto',
    continent_code: 'NA',
    country_code: 'CA',
    latitude: 43.6767,
    longitude: -79.6306,
    metro: {
      metro: 'yyz',
    },
    state: '',
  },
  name: 'yyz01',
  network: {
    ipv4: {
      prefix: '162.219.48.0/26',
    },
    ipv6: {
      prefix: '2620:10a:80fd::/64',
    },
  },
  transit: {
    asn: 'AS6939',
    provider: 'Hurricane Electric LLC',
    uplink: '1g',
  },
}
