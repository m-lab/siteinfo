local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'yul03',
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
      prefix: '76.74.83.192/26',
    },
    ipv6+: {
      prefix: '2001:668:1f:ffa3::/64',
    },
  },
  transit+: {
    provider: 'KPN B.V.',
    uplink: '10g',
    asn: 'AS286',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'CA',
    metro: 'yul',
    city: 'Montreal',
    state: '',
    latitude: 45.4576,
    longitude: -73.7497,
  },
  lifecycle+: {
    created: '2021-04-09',
  },
}
