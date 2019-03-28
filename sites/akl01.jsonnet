local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'akl01',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '163.7.129.0/26',
    },
    ipv6+: {
      prefix: '2404:138:4009::/64',
    },
  },
  transit+: {
    provider: 'REANNZ National Research and Education Network',
    uplink: '10g',
    asn: 'AS38022',
  },
  location+: {
    continent_code: 'OC',
    country_code: 'NZ',
    metro: 'akl',
    city: 'Auckland',
    state: '',
    latitude: -36.85,
    longitude: 174.783,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
