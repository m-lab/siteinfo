local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations: {
    type: 'physical',
  },
  lifecycle: {
    created: '2021-03-16',
  },
  location: {
    city: 'Calgary',
    continent_code: 'NA',
    country_code: 'CA',
    latitude: 51.1315,
    longitude: -114.0106,
    metro: {
      metro: 'yyc',
    },
    state: '',
  },
  name: 'yyc01',
  network: {
    ipv4: {
      prefix: '162.219.50.0/26',
    },
    ipv6: {
      prefix: '2620:10a:80ff::/64',
    },
  },
  transit: {
    asn: 'AS6939',
    provider: 'Hurricane Electric LLC',
    uplink: '1g',
  },
}
