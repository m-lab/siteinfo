local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2016-01-01',
    retired: '2018-07-24',
  },
  location+: {
    city: 'Denver',
    continent_code: 'NA',
    country_code: 'US',
    latitude: 39.8617,
    longitude: -104.673,
    metro: 'den',
    state: '',
  },
  name: 'den03',
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
      prefix: '65.46.46.128/26',
    },
    ipv6+: {
      prefix: '2610:18:10e:8003::/64',
    },
  },
  transit+: {
    asn: 'AS2828',
    provider: 'XO Communications',
    uplink: '1g',
  },
}
