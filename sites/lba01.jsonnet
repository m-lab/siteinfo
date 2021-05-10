local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2012-08-03',
    retired: '2019-05-22',
  },
  location+: {
    city: 'Leeds',
    continent_code: 'EU',
    country_code: 'GB',
    latitude: 53.8658,
    longitude: -1.6606,
    metro: 'lba',
    state: '',
  },
  name: 'lba01',
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
      prefix: '109.239.110.0/26',
    },
    ipv6+: {
      prefix: '2a00:1a80:1:8::/64',
    },
  },
  transit+: {
    asn: 'AS33920',
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
    provider: '(aq) network+s limited',
    uplink: '1g',
  },
}
