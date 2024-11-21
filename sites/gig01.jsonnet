local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'gig01',
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
      prefix: '190.98.179.128/26',
    },
    ipv6+: {
      prefix: '2001:1498:1:964::/64',
    },
  },
  transit+: {
    provider: 'Telefonica International Wholesale Services',
    uplink: '10g',
    asn: 'AS12956',
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
    created: '2020-02-26',
    retired: '2023-07-10',
  },
}
