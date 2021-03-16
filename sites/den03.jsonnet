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
  name: 'den03',
  network: {
    ipv4: {
      prefix: '65.46.46.128/26',
    },
    ipv6: {
      prefix: '2610:18:10e:8003::/64',
    },
  },
  transit: {
    asn: 'AS2828',
    provider: 'XO Communications',
    uplink: '1g',
  },
}
