local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mex02',
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
      prefix: '67.74.37.0/26',
    },
    ipv6+: {
      prefix: '2001:1900:3001:19::/64',
    },
  },
  transit+: {
    provider: 'Level 3 Parent, LLC',
    uplink: '10g',
    asn: 'AS3549',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'MX',
    metro: 'mex',
    city: 'Mexico City',
    state: '',
    latitude: 19.4361,
    longitude: -99.0719,
  },
  lifecycle+: {
    created: '2020-09-29',
  },
}
