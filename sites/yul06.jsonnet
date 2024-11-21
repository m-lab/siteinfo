local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'yul06',
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
      prefix: '38.129.52.128/26',
    },
    ipv6+: {
      prefix: '2001:550:600::/64',
    },
  },
  transit+: {
    provider: 'Cogent Communications',
    uplink: '10g',
    asn: 'AS174',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'CA',
    metro: 'yul',
    city: 'Montreal',
    state: '',
    latitude: 45.4657,
    longitude: -73.7455,
  },
  lifecycle+: {
    created: '2021-07-19',
  },
}
