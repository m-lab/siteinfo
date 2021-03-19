local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2015-01-28',
    retired: '2018-03-09',
  },
  location+: {
    city: 'Bangkok',
    continent_code: 'AS',
    country_code: 'TH',
    latitude: 13.6904,
    longitude: 100.7501,
    metro: 'bkk',
    state: '',
  },
  name: 'bkk01',
  network+: {
    ipv4+: {
      prefix: '61.7.252.0/26',
    },
    ipv6+: {
      prefix: '2001:c38:9041::/64',
    },
  },
  transit+: {
    asn: 'AS9931',
    provider: 'The Communication Authoity of Thailand, CAT',
    uplink: '1g',
  },
}
