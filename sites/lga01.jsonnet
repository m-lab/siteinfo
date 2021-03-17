local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2021-03-16',
  },
  location+: {
    city: 'New York',
    continent_code: 'NA',
    country_code: 'US',
    latitude: 40.7667,
    longitude: -73.8667,
    metro: 'lga',
    state: '',
  },
  name: 'lga01',
  network+: {
    ipv4+: {
      prefix: '74.63.50.0/26',
    },
    ipv6+: {
      prefix: '2001:48c8:5:f::/64',
    },
  },
  transit+: {
    asn: 'AS29791',
    provider: 'Internap Holding LLC',
    uplink: '1g',
  },
}
