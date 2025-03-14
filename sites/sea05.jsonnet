local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2015-06-16',
    retired: '2018-07-18',
  },
  location+: {
    city: 'Seattle',
    continent_code: 'NA',
    country_code: 'US',
    latitude: 47.449,
    longitude: -122.309,
    metro: 'sea',
    state: '',
  },
  name: 'sea05',
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
      prefix: '64.3.225.64/26',
    },
    ipv6+: {
      prefix: '2610:18:114:4001::/64',
    },
  },
  transit+: {
    asn: 'AS2828',
    provider: 'XO Communications',
    uplink: '1g',
  },
}
