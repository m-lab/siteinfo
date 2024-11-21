local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2009-06-04',
    retired: '2017-05-30',
  },
  location+: {
    city: 'London',
    continent_code: 'EU',
    country_code: 'GB',
    latitude: 51.4775,
    longitude: -0.461389,
    metro: 'lhr',
    state: '',
  },
  name: 'lhr01',
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
      prefix: '217.163.1.64/26',
    },
    ipv6+: {
      prefix: '2001:4c08:2003:3::/64',
    },
  },
  transit+: {
    asn: 'AS3356',
    provider: 'Level 3 Parent, LLC',
    uplink: '1g',
  },
}
