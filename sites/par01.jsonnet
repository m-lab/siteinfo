local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2009-07-09',
    retired: '2017-08-02',
  },
  location+: {
    city: 'Paris',
    continent_code: 'EU',
    country_code: 'FR',
    latitude: 49.0097,
    longitude: 2.54778,
    metro: 'par',
    state: '',
  },
  name: 'par01',
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
      prefix: '80.239.168.192/26',
    },
    ipv6+: {
      prefix: '2001:2030:0:1a::/64',
    },
  },
  transit+: {
    asn: 'AS1299',
    provider: 'Telia Company AB',
    uplink: '1g',
  },
}
