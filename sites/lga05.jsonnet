local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lga05',
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
      prefix: '4.35.94.0/26',
    },
    ipv6+: {
      prefix: '2001:1900:2100:14::/64',
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
