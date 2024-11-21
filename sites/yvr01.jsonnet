local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'yvr01',
  annotations+: {
    type: 'physical',
  },
  machines+: {
    mlab1+: {
      model: 'r630',
    },
    mlab2+: {
      model: 'r630',
    },
    mlab3+: {
      model: 'r630',
    },
    mlab4+: {
      model: 'r630',
    },
  },
  network+: {
    ipv4+: {
      prefix: '184.105.70.192/26',
    },
    ipv6+: {
      prefix: '2001:470:1:822::/64',
    },
  },
  transit+: {
    provider: 'Hurricane Electric LLC',
    uplink: '1g',
    asn: 'AS6939',
  },
  switch+: {
    auto_negotiation: 'no',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'CA',
    metro: 'yvr',
    city: 'Vancouver',
    state: '',
    latitude: 49.1939,
    longitude: -123.184,
  },
  lifecycle+: {
    created: '2019-01-01',
    retired: '2022-11-01',
  },
}
