local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2011-09-13',
    retired: '2016-01-01',
  },
  location+: {
    city: 'Wellington',
    continent_code: 'OC',
    country_code: 'NZ',
    latitude: -41.3272,
    longitude: 174.805,
    metro: 'wlg',
    state: '',
  },
  name: 'wlg01',
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
      prefix: '103.10.233.0/26',
    },
    ipv6+: {
      prefix: '2404:2000:3000::/64',
    },
  },
  transit+: {
    asn: 'AS132003',
    provider: 'Network Research Lab',
    uplink: '1g',
  },
}
