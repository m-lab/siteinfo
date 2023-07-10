local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'yul05',
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
      prefix: '209.95.149.128/26',
    },
    ipv6+: {
      prefix: '2001:2030:0:54::/64',
    },
  },
  transit+: {
    provider: 'Telia Company AB',
    uplink: '10g',
    asn: 'AS1299',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'CA',
    metro: 'yul',
    city: 'Montreal',
    state: '',
    latitude: 45.4576,
    longitude: -73.7497,
  },
  lifecycle+: {
    created: '2021-04-15',
    retired: '2023-07-10',
  },
}
