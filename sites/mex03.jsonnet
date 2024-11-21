local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mex03',
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
      prefix: '76.74.75.128/26',
    },
    ipv6+: {
      prefix: '2001:668:1f:ff9a::/64',
    },
  },
  transit+: {
    provider: 'KPN B.V.',
    uplink: '10g',
    asn: 'AS286',
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
    created: '2021-03-31',
    retired: '2024-08-15',
  },
}
