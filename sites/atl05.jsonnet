local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2016-01-01',
    retired: '2019-02-28',
  },
  location+: {
    city: 'Atlanta',
    continent_code: 'NA',
    country_code: 'US',
    latitude: 33.6367,
    longitude: -84.4281,
    metro: 'atl',
    state: '',
  },
  name: 'atl05',
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
      prefix: '67.106.215.192/26',
    },
    ipv6+: {
      prefix: '2610:18:111:c002::/64',
    },
  },
  transit+: {
    asn: 'AS2828',
    provider: 'XO Communications',
    uplink: '1g',
  },
}
