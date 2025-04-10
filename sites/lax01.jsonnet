local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lax01',
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
      prefix: '38.98.51.0/26',
    },
    ipv6+: {
      prefix: '2001:550:6800::/64',
    },
  },
  transit+: {
    provider: 'Cogent Communications',
    uplink: '10g',
    asn: 'AS174',
  },
  location+: {
    city: 'Los Angeles',
    continent_code: 'NA',
    country_code: 'US',
    metro: 'lax',
    state: 'CA',
    latitude: 33.9425,
    longitude: -118.408,
  },
  lifecycle+: {
    created: '2009-05-14',
    retired: '2019-06-05',
  },
}
