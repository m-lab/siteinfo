local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mia01',
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
    city: 'Miami',
    continent_code: 'NA',
    country_code: 'US',
    metro: 'mia',
    state: 'FL',
    latitude: 25.7932,
    longitude: -80.2906,
  },
  lifecycle+: {
    created: '2009-05-28',
    retired: '2019-06-05',
  },
}
