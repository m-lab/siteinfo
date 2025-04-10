local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'sea07',
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
      prefix: '209.170.110.128/26',
    },
    ipv6+: {
      prefix: '2001:2030:0:a::/64',
    },
  },
  transit+: {
    provider: 'Telia Company AB',
    uplink: '10g',
    asn: 'AS1299',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'sea',
    city: 'Seattle',
    state: 'WA',
    latitude: 47.449,
    longitude: -122.309,
  },
  lifecycle+: {
    created: '2019-01-01',
    retired: '2024-01-10',
  },
}
