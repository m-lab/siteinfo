local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lga1t',
  annotations+: {
    type: 'physical',
  },
  machines+: {
    mlab1+: {
      model: 'r630',
      project: 'mlab-sandbox',
    },
    mlab2+: {
      model: 'r630',
      project: 'mlab-sandbox',
    },
    mlab3+: {
      model: 'r630',
      project: 'mlab-sandbox',
    },
    mlab4+: {
      model: 'r630',
      project: 'mlab-sandbox',
    },
  },
  network+: {
    ipv4+: {
      prefix: '4.14.3.0/26',
    },
    ipv6+: {
      prefix: '2001:1900:2100:1::/64',
    },
  },
  transit+: {
    provider: 'Level 3 Parent, LLC',
    uplink: '1g',
    asn: 'AS3356',
  },
  switch+: {
    auto_negotiation: 'no',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'lga',
    city: 'New York',
    state: 'NY',
    latitude: 40.7667,
    longitude: -73.8667,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
