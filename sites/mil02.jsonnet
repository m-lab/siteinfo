local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mil02',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '80.239.222.0/26',
    },
    ipv6+: {
      prefix: '2001:2030:30::/64',
    },
  },
  transit+: {
    provider: 'Telia Company AB',
    uplink: '10g',
    asn: 'AS1299',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'mil',
    city: 'Milan',
    state: '',
    latitude: 45.464,
    longitude: 9.1916,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
