local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations: {
    type: 'physical',
  },
  lifecycle: {
    created: '2021-03-16',
  },
  location: {
    city: 'Denver',
    continent_code: 'NA',
    country_code: 'US',
    latitude: 39.8561,
    longitude: -104.6737,
    metro: {
      metro: 'den',
    },
    state: '',
  },
  name: 'den01',
  network: {
    ipv4: {
      prefix: '184.105.23.64/26',
    },
    ipv6: {
      prefix: '2001:470:1:250::/64',
    },
  },
  transit: {
    asn: 'AS6939',
    provider: 'Hurricane Electric LLC',
    uplink: '1g',
  },
}
