local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'den06',
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
      prefix: '208.116.164.0/26',
    },
    ipv6+: {
      prefix: '2001:668:1f:b3::/64',
    },
  },
  transit+: {
    provider: 'GTT Communications Inc.',
    uplink: '10g',
    asn: 'AS3257',
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
    retired: '2023-12-11',
  },
}
