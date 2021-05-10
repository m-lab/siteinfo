local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'den02',
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
      prefix: '4.34.58.0/26',
    },
    ipv6+: {
      prefix: '2001:1900:2200:49::/64',
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
    metro: 'den',
    city: 'Denver',
    state: 'CO',
    latitude: 39.8561,
    longitude: -104.6737,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
