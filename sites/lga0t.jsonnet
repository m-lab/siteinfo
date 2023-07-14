local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lga0t',
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
      prefix: '4.14.159.64/26',
    },
    ipv6+: {
      prefix: '2001:1900:2100:2d::/64',
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
    latitude: 40.7661,
    longitude: -73.8667,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
