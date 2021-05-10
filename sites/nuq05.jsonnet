local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2016-01-01',
    retired: '2018-07-18',
  },
  location+: {
    city: 'San Francisco Bay Area',
    continent_code: '',
    country_code: 'US',
    latitude: 37.3833,
    longitude: -122.0667,
    metro: 'nuq',
    state: '',
  },
  name: 'nuq05',
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
      prefix: '216.156.85.192/26',
    },
    ipv6+: {
      prefix: '2610:18:111:7::/64',
    },
  },
  transit+: {
    asn: 'AS2828',
    provider: 'XO Communications',
    uplink: '1g',
  },
}
