local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'gig04',
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
      prefix: '200.189.196.64/26',
    },
    ipv6+: {
      prefix: '2804:4c0:ffff:fefe::/64',
    },
  },
  transit+: {
    provider: 'Level 3 Parent, LLC',
    uplink: '10g',
    asn: 'AS3549',
  },
  location+: {
    continent_code: 'SA',
    country_code: 'BR',
    metro: 'gig',
    city: 'Rio de Janeiro',
    state: '',
    latitude: -22.8100,
    longitude: -43.2506,
  },
  lifecycle+: {
    created: '2020-09-30',
    retired: '2023-10-16',
  },
}
