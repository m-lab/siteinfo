local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'dub01',
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
      prefix: '193.1.12.192/26',
    },
    ipv6+: {
      prefix: '2001:770:b5::/64',
    },
  },
  transit+: {
    provider: 'HEAnet Limited',
    uplink: '10g',
    asn: 'AS1213',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'IE',
    metro: 'dub',
    city: 'Dublin',
    state: '',
    latitude: 53.4333,
    longitude: -6.25,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
