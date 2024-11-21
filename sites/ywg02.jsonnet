local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'ywg02',
  annotations+: {
    type: 'physical',
  },
  machines+: {
    mlab1+: {
      model: 'r640',
    },
    mlab2+: {
      model: 'r640',
    },
    mlab3+: {
      model: 'r640',
    },
    mlab4+: {
      model: 'r640',
    },
  },
  network+: {
    ipv4+: {
      prefix: '184.105.31.0/26',
    },
    ipv6+: {
      prefix: '2001:470:1:ed7::/64',
    },
  },
  transit+: {
    provider: 'Hurricane Electric LLC',
    uplink: '10g',
    asn: 'AS6939',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'CA',
    metro: 'ywg',
    city: 'Winnipeg',
    state: '',
    latitude: 49.91,
    longitude: -97.2399,
  },
  lifecycle+: {
    created: '2022-10-27',
  },
}
