local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2009-07-23',
    retired: '2018-05-21',
  },
  location+: {
    city: 'Amsterdam',
    continent_code: 'EU',
    country_code: 'NL',
    latitude: 52.3086,
    longitude: 4.76389,
    metro: 'ams',
    state: '',
  },
  name: 'ams02',
  machines+: {
    mlab1+: {
      model: r630,
    },
    mlab2+: {
      model: r630,
    },
    mlab3+: {
      model: r630,
    },
    mlab4+: {
      model: r630,
    },
  },
  network+: {
    ipv4+: {
      prefix: '72.26.217.64/26',
    },
    ipv6+: {
      prefix: '2001:48c8:7::/64',
    },
  },
  transit+: {
    asn: 'AS29791',
    provider: 'Internap Holding LLC',
    uplink: '1g',
  },
}
