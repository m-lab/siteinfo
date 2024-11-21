local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'ywg01',
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
      prefix: '184.105.55.64/26',
    },
    ipv6+: {
      prefix: '2001:470:1:81f::/64',
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
    metro: 'ywg',
    city: 'Winnipeg',
    state: '',
    latitude: 49.91,
    longitude: -97.2399,
  },
  lifecycle+: {
    created: '2019-01-01',
    retired: '2022-11-01',
  },
}
