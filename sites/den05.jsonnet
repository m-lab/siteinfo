local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'den05',
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
      prefix: '209.170.120.64/26',
    },
    ipv6+: {
      prefix: '2001:2030:0:3b::/64',
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
    metro: 'den',
    city: 'Denver',
    state: 'CO',
    latitude: 39.8617,
    longitude: -104.673,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
