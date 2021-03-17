local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2021-03-16',
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
