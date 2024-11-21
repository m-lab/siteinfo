local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mex04',
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
      prefix: '38.77.64.192/26',
    },
    ipv6+: {
      prefix: '2001:550:3900::/64',
    },
  },
  transit+: {
    provider: 'Cogent Communications',
    uplink: '10g',
    asn: 'AS174',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'MX',
    metro: 'mex',
    city: 'Mexico City',
    state: '',
    latitude: 19.4363,
    longitude: -99.0721,
  },
  lifecycle+: {
    created: '2021-07-19',
  },
}
