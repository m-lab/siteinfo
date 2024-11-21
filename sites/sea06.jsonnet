local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2017-03-28',
    retired: '2019-08-21',
  },
  location+: {
    city: 'Seattle',
    continent_code: 'NA',
    country_code: 'US',
    latitude: 47.449,
    longitude: -122.309,
    metro: 'sea',
    state: '',
  },
  name: 'sea06',
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
      prefix: '64.74.15.192/26',
    },
    ipv6+: {
      prefix: '2600:c00:0:202::/64',
    },
  },
  transit+: {
    asn: 'AS14744',
    provider: 'Internap Holding LLC',
    uplink: '1g',
  },
}
