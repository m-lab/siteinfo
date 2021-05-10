local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lis01',
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
      prefix: '213.242.96.192/26',
    },
    ipv6+: {
      prefix: '2001:4c08:2003:3d::/64',
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
    continent_code: 'EU',
    country_code: 'PT',
    metro: 'lis',
    city: 'Lisbon',
    state: '',
    latitude: 38.7756,
    longitude: -9.1354,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
