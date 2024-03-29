local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'syd02',
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
      prefix: '175.45.79.0/26',
    },
    ipv6+: {
      prefix: '2402:7800:0:12::/64',
    },
  },
  transit+: {
    provider: 'Vocus Connect International Backbone',
    uplink: '10g',
    asn: 'AS4826',
  },
  location+: {
    continent_code: 'OC',
    country_code: 'AU',
    metro: 'syd',
    city: 'Sydney',
    state: '',
    latitude: -33.9461,
    longitude: 151.177,
  },
  lifecycle+: {
    created: '2019-01-01',
    retired: '2022-04-08',
  },
}
