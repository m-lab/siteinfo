local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lga04',
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
      prefix: '173.205.4.64/26',
    },
    ipv6+: {
      prefix: '2001:668:1f:22::/64',
    },
  },
  transit+: {
    provider: 'GTT Communications Inc.',
    uplink: '10g',
    asn: 'AS3257',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'lga',
    city: 'New York',
    state: 'NY',
    latitude: 40.775,
    longitude: -73.875,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
