local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'yyz05',
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
      prefix: '209.170.101.64/26',
    },
    ipv6+: {
      prefix: '2001:2030:0:5d::/64',
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
    metro: 'yyz',
    city: 'Toronto',
    state: '',
    latitude: 43.6767,
    longitude: -79.6306,
  },
  lifecycle+: {
    created: '2021-07-12',
  },
}
