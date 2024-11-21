local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mrs01',
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
      prefix: '212.73.211.64/26',
    },
    ipv6+: {
      prefix: '2001:4c08:2003:38::/64',
    },
  },
  transit+: {
    provider: 'Level 3 Parent, LLC',
    uplink: '10g',
    asn: 'AS3356',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'FR',
    metro: 'mrs',
    city: 'Marseille',
    state: '',
    latitude: 43.4393,
    longitude: 5.22142,
  },
  lifecycle+: {
    created: '2020-02-03',
  },
}
