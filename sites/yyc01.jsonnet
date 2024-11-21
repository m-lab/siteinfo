local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2014-09-01',
    retired: '2017-09-27',
  },
  location+: {
    city: 'Calgary',
    continent_code: 'NA',
    country_code: 'CA',
    latitude: 51.1139,
    longitude: -114.02,
    metro: 'yyc',
    state: '',
  },
  name: 'yyc01',
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
      prefix: '162.219.50.0/26',
    },
    ipv6+: {
      prefix: '2620:10a:80ff::/64',
    },
  },
  transit+: {
    asn: 'AS6939',
    provider: 'Hurricane Electric LLC',
    uplink: '1g',
  },
}
