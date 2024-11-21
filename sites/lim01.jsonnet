local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lim01',
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
      prefix: '8.243.113.192/26',
    },
    ipv6+: {
      prefix: '2001:13b3:9000::/64',
    },
  },
  transit+: {
    provider: 'Level 3 Parent, LLC',
    uplink: '10g',
    asn: 'AS3356',
  },
  location+: {
    continent_code: 'SA',
    country_code: 'PE',
    metro: 'lim',
    city: 'Lima',
    state: '',
    latitude: -12.0219,
    longitude: -77.1143,
  },
  lifecycle+: {
    created: '2021-08-26',
  },
}
