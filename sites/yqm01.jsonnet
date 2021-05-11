local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'yqm01',
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
      prefix: '209.51.169.128/26',
    },
    ipv6+: {
      prefix: '2001:470:1:820::/64',
    },
  },
  transit+: {
    provider: 'Hurricane Electric LLC',
    uplink: '1g',
    asn: 'AS6939',
  },
  switch+: {
    auto_negotiation: 'no',
    uplink_port: 'ge-0/0/47',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'CA',
    metro: 'yqm',
    city: 'Moncton',
    state: '',
    latitude: 46.1073,
    longitude: -64.6738,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
