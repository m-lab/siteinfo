local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'per01',
  annotations+: {
    donated: true,
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
      prefix: '49.255.54.64/26',
    },
    ipv6+: {
      prefix: '2402:7800:6006:1::/64',
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
    metro: 'per',
    city: 'Perth',
    state: '',
    latitude: -31.9403,
    longitude: 115.967,
  },
  lifecycle+: {
    created: '2022-02-18',
  },
}
