local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'beg01',
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
      prefix: '188.120.127.0/26',
    },
    ipv6+: {
      prefix: '2001:7f8:1e:6::/64',
    },
  },
  transit+: {
    provider: 'Serbian Open Exchange DOO',
    uplink: '10g',
    asn: 'AS13004',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'RS',
    metro: 'beg',
    city: 'Belgrade',
    state: '',
    latitude: 44.8216,
    longitude: 20.2921,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
