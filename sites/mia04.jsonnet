local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mia04',
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
      prefix: '173.205.3.128/26',
    },
    ipv6+: {
      prefix: '2001:668:1f:1f::/64',
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
    metro: 'mia',
    city: 'Miami',
    state: 'FL',
    latitude: 25.7932,
    longitude: -80.2906,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
