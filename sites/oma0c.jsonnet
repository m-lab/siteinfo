local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'oma0c',
  annotations+: {
    type: 'cloud',
  },
  machines+: {
    count: 1,
  },
  network+: {
    ipv4+: {
      prefix: '35.226.110.109/32',
    },
    ipv6+: {
      prefix: null,
    },
  },
  transit+: {
    asn: 'AS15169',
    provider: 'Google',
    uplink: '1g',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'oma',
    city: 'Omaha',
    state: 'NE',
    latitude: 41.30376,
    longitude: -95.893282,
  },
  lifecycle+: {
    created: '2018-01-01',
  },
}
