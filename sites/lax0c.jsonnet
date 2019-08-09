local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lax0c',
  annotations+: {
    type: 'cloud',
  },
  machines+: {
    count: 1,
  },
  network+: {
    ipv4+: {
      prefix: '35.235.125.164/32',
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
    metro: 'lax',
    city: 'Los Angeles',
    state: 'CA',
    latitude: 33.9425,
    longitude: -118.4072,
  },
  lifecycle+: {
    created: '2018-01-01',
  },
}
