local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lhr05',
  annotations+: {
    type: 'physical',
  },
  machines+: {
    mlab1+: {
      model: 'r630',
    },
    mlab2+: {
      model: 'r630',
    },
    mlab3+: {
      model: 'r630',
    },
    mlab4+: {
      model: 'r630',
    },
  },
  network+: {
    ipv4+: {
      prefix: '212.113.31.0/26',
    },
    ipv6+: {
      prefix: '2001:4c08:2003:3c::/64',
    },
  },
  transit+: {
    provider: 'Level 3 Parent, LLC',
    uplink: '10g',
    asn: 'AS3356',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'GB',
    metro: 'lhr',
    city: 'London',
    state: '',
    latitude: 51.4775,
    longitude: -0.461389,
  },
  lifecycle+: {
    created: '2019-01-01',
    retired: '2023-09-01',
  },
}
