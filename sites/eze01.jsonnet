local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'eze01',
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
      prefix: '204.199.6.0/26',
    },
    ipv6+: {
      prefix: '2001:1900:2261:1705::/64',
    },
  },
  transit+: {
    provider: 'Level 3 Parent, LLC',
    uplink: '10g',
    asn: 'AS3549',
  },
  location+: {
    continent_code: 'SA',
    country_code: 'AR',
    metro: 'eze',
    city: 'Buenos Aires',
    state: '',
    latitude: -34.8222,
    longitude: -58.5358,
  },
  lifecycle+: {
    created: '2021-08-26',
  },
}
