local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations: {
    type: 'physical',
  },
  lifecycle: {
    created: '2021-03-16',
  },
  location: {
    city: 'Dallas',
    continent_code: 'NA',
    country_code: 'US',
    latitude: 32.8969,
    longitude: -97.0381,
    metro: {
      metro: 'dfw',
    },
    state: '',
  },
  name: 'dfw06',
  network: {
    ipv4: {
      prefix: '63.251.44.192/26',
    },
    ipv6: {
      prefix: '2600:c12:1002:4::/64',
    },
  },
  transit: {
    asn: 'AS12179',
    provider: 'Internap Holding LLC',
    uplink: '1g',
  },
}
