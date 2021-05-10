local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mia06',
  annotations+: {
    type: 'physical',
  },
  machines+: {
    mlab1+: {
      model: r630,
    },
    mlab2+: {
      model: r630,
    },
    mlab3+: {
      model: r630,
    },
    mlab4+: {
      model: r630,
    },
  },
  network+: {
    ipv4+: {
      prefix: '4.71.210.192/26',
    },
    ipv6+: {
      prefix: '2001:1900:3001:a::/64',
    },
  },
  transit+: {
    provider: 'Level 3 Parent, LLC',
    uplink: '10g',
    asn: 'AS3356',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'mia',
    city: 'Miami',
    state: 'FL',
    latitude: 25.7833,
    longitude: -80.2667,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
