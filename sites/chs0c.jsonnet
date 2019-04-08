local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'chs0c',
  annotations+: {
    type: 'cloud',
  },
  machines+: {
    count: 1,
  },
  network+: {
    ipv4+: {
      prefix: '35.237.214.243/32',
    },
    ipv6+: {
      prefix: null,
    },
  },
  transit+: {
    provider: 'Google',
    uplink: '1g',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'chs',
    city: 'Charleston',
    state: 'SC',
    latitude: 32.896663,
    longitude: -80.039184,
  },
  lifecycle+: {
    created: '2018-01-01',
  },
}
