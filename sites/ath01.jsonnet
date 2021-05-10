local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2009-08-10',
    retired: '2016-07-06',
  },
  location+: {
    city: 'Athens',
    continent_code: '',
    country_code: 'GR',
    latitude: 37.9364,
    longitude: 23.9444,
    metro: 'ath',
    state: '',
  },
  name: 'ath01',
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
      prefix: '83.212.4.0/26',
    },
    ipv6+: {
      prefix: '2001:648:2ffc:2101::/64',
    },
  },
  transit+: {
    asn: 'AS5408',
    provider: 'National Infrastructures for Research and Technology',
    uplink: '1g',
  },
}
