local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'yyc03',
  annotations+: {
    type: 'physical',
  },
  machines+: {
    mlab1+: {
      model: 'r640',
    },
    mlab2+: {
      model: 'r640',
    },
    mlab3+: {
      model: 'r640',
    },
    mlab4+: {
      model: 'r640',
    },
  },
  network+: {
    ipv4+: {
      prefix: '64.62.161.128/26',
    },
    ipv6+: {
      prefix: '2001:470:1:ed5::/64',
    },
  },
  transit+: {
    provider: 'Hurricane Electric LLC',
    uplink: '10g',
    asn: 'AS6939',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'CA',
    metro: 'yyc',
    city: 'Calgary',
    state: '',
    latitude: 51.1139,
    longitude: -114.02,
  },
  lifecycle+: {
    created: '2022-10-27',
  },
}
