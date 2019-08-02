local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'pdx0c',
  annotations+: {
    type: 'cloud',
  },
  machines+: {
    count: 1,
  },
  network+: {
    ipv4+: {
      prefix: '35.230.97.78/32',
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
    metro: 'pdx',
    city: 'Portland',
    state: 'OR',
    latitude: 45.589191,
    longitude: -122.600228,
  },
  lifecycle+: {
    created: '2018-01-01',
  },
}
