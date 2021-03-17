local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'syd01',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '203.5.76.128/26',
    },
    ipv6+: {
      prefix: '2001:388:d0::/64',
    },
  },
  transit+: {
    provider: 'Australian Academic and Reasearch Network (AARNet)',
    uplink: '10g',
    asn: 'AS7575',
  },
  location+: {
    city: 'Sydney',
    continent_code: 'OC',
    country_code: 'AU',
    metro: 'syd',
    state: '',
    latitude: -33.9461,
    longitude: 151.177,
  },
  lifecycle+: {
    created: '2010-05-05',
    retired: '2019-06-13',
  },
}
