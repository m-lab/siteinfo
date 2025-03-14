local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2009-02-10',
    retired: '2016-04-21',
  },
  location+: {
    city: 'New York',
    continent_code: 'NA',
    country_code: 'US',
    latitude: 40.775,
    longitude: -73.875,
    metro: 'lga',
    state: '',
  },
  name: 'lga01',
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
      prefix: '74.63.50.0/26',
    },
    ipv6+: {
      prefix: '2001:48c8:5:f::/64',
    },
  },
  transit+: {
    asn: 'AS29791',
    provider: 'Internap Holding LLC',
    uplink: '1g',
  },
}
