local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2011-10-12',
    retired: '2018-07-19',
  },
  location+: {
    city: 'Washington',
    continent_code: 'NA',
    country_code: 'US',
    latitude: 38.9444,
    longitude: -77.4558,
    metro: 'iad',
    state: '',
  },
  name: 'iad01',
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
      prefix: '216.156.197.128/26',
    },
    ipv6+: {
      prefix: '2610:18:111:8001::/64',
    },
  },
  transit+: {
    asn: 'AS2828',
    provider: 'XO Communications',
    uplink: '1g',
  },
}
