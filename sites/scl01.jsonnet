local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'scl01',
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
      prefix: '8.243.188.192/26',
    },
    ipv6+: {
      prefix: '2001:1900:2261:1709::/64',
    },
  },
  transit+: {
    provider: 'Level 3 Parent, LLC',
    uplink: '10g',
    asn: 'AS3356',
  },
  location+: {
    continent_code: 'SA',
    country_code: 'CL',
    metro: 'scl',
    city: 'Santiago',
    state: '',
    latitude: -33.3928,
    longitude: -70.7856,
  },
  lifecycle+: {
    created: '2021-08-26',
  },
}
