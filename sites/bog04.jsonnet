local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'bog04',
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
      prefix: '200.189.196.128/26',
    },
    ipv6+: {
      prefix: '2001:13b0:4000:32::/64',
    },
  },
  transit+: {
    provider: 'Level 3 Parent, LLC',
    uplink: '10g',
    asn: 'AS3549',
  },
  location+: {
    continent_code: 'SA',
    country_code: 'CO',
    metro: 'bog',
    city: 'Bogota',
    state: '',
    latitude: 4.69715,
    longitude: -74.14329,
  },
  lifecycle+: {
    created: '2020-07-06',
    retired: '2024-09-19',
  },
}
