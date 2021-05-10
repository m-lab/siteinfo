local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lga02',
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
      prefix: '38.106.70.128/26',
    },
    ipv6+: {
      prefix: '2001:550:1d00:100::/64',
    },
  },
  transit+: {
    provider: 'Cogent Communications',
    uplink: '10g',
    asn: 'AS174',
  },
  location+: {
    city: 'New York',
    continent_code: 'NA',
    country_code: 'US',
    metro: 'lga',
    state: 'NY',
    latitude: 40.7667,
    longitude: -73.8667,
  },
  lifecycle+: {
    created: '2006-06-08',
    retired: '2019-06-10',
  },
}
