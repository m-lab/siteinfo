local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'yyc02',
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
      prefix: '65.49.72.192/26',
    },
    ipv6+: {
      prefix: '2001:470:1:42c::/64',
    },
  },
  transit+: {
    provider: 'Hurricane Electric LLC',
    uplink: '1g',
    asn: 'AS6939',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'CA',
    metro: 'yyc',
    city: 'Calgary',
    state: '',
    latitude: 51.1315,
    longitude: -114.0106,
  },
  lifecycle+: {
    created: '2019-01-01',
    retired: '2022-11-01',
  },
}
