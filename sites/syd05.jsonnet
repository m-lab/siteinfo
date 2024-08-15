local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'syd05',
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
      prefix: '175.45.79.64/26',
    },
    ipv6+: {
      prefix: '2402:7800:200f:1::/64',
    },
  },
  transit+: {
    provider: 'Vocus',
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
    created: '2022-04-14',
    retired: '2024-08-15',
  },
}
