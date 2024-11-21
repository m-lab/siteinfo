local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'sea01',
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
      prefix: '38.102.0.64/26',
    },
    ipv6+: {
      prefix: '2001:550:3200:1::/64',
    },
  },
  transit+: {
    provider: 'Cogent Communications',
    uplink: '10g',
    asn: 'AS174',
  },
  location+: {
    city: 'Seattle',
    continent_code: 'NA',
    country_code: 'US',
    metro: 'sea',
    state: 'WA',
    latitude: 47.449,
    longitude: -122.309,
  },
  lifecycle+: {
    created: '2009-03-13',
    retired: '2019-06-04',
  },
}
