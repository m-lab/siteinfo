local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'dfw01',
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
      prefix: '38.107.216.0/26',
    },
    ipv6+: {
      prefix: '2001:550:2000::/64',
    },
  },
  transit+: {
    provider: 'Cogent Communications',
    uplink: '10g',
    asn: 'AS174',
  },
  location+: {
    city: 'Dallas',
    continent_code: 'NA',
    country_code: 'US',
    metro: 'dfw',
    state: 'TX',
    latitude: 32.8968,
    longitude: -97.038,
  },
  lifecycle+: {
    created: '2009-07-08',
    retired: '2019-06-05',
  },
}
