local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2014-09-01',
    retired: '2017-10-25',
  },
  location+: {
    city: 'Montreal',
    continent_code: 'NA',
    country_code: 'CA',
    latitude: 45.4576,
    longitude: -73.7497,
    metro: 'yul',
    state: '',
  },
  name: 'yul01',
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
      prefix: '162.219.49.0/26',
    },
    ipv6+: {
      prefix: '2620:10a:80fe::/64',
    },
  },
  transit+: {
    asn: 'AS6939',
    provider: 'Hurricane Electric LLC',
    uplink: '1g',
  },
}
