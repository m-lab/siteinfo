local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'yvr04',
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
      prefix: '74.199.130.0/26',
    },
    ipv6+: {
      prefix: '2001:668:1f:ffe8::/64',
    },
  },
  transit+: {
    provider: 'GTT Communications, Inc.',
    uplink: '10g',
    asn: 'AS286',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'CA',
    metro: 'yvr',
    city: 'Vancouver',
    state: '',
    latitude: 49.1939,
    longitude: -123.184,
  },
  lifecycle+: {
    created: '2021-07-21',
  },
}
