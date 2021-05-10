local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2016-08-18',
    retired: '2019-08-21',
  },
  location+: {
    city: 'New York',
    continent_code: 'NA',
    country_code: 'US',
    latitude: 40.7667,
    longitude: -73.8667,
    metro: 'lga',
    state: '',
  },
  name: 'lga07',
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
      prefix: '66.151.223.128/26',
    },
    ipv6+: {
      prefix: '2600:c0f:2002::/64',
    },
  },
  transit+: {
    asn: 'AS10910',
    provider: 'Internap Holding LLC',
    uplink: '1g',
  },
}
