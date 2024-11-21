local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'tpe01',
  annotations+: {
    donated: true,
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
      prefix: '163.22.28.0/26',
    },
    ipv6+: {
      prefix: '2001:e10:6840:28::/64',
    },
  },
  transit+: {
    provider: 'Taiwan Academic Network (TANet) Information Center',
    uplink: '10g',
    asn: 'AS1659',
  },
  location+: {
    continent_code: 'AS',
    country_code: 'TW',
    metro: 'tpe',
    city: 'Taipei',
    state: '',
    latitude: 25.0777,
    longitude: 121.233,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
