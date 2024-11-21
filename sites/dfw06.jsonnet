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
    city: 'Dallas',
    continent_code: 'NA',
    country_code: 'US',
    latitude: 32.8968,
    longitude: -97.038,
    metro: 'dfw',
    state: '',
  },
  name: 'dfw06',
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
      prefix: '63.251.44.192/26',
    },
    ipv6+: {
      prefix: '2600:c12:1002:4::/64',
    },
  },
  transit+: {
    asn: 'AS12179',
    provider: 'Internap Holding LLC',
    uplink: '1g',
  },
}
