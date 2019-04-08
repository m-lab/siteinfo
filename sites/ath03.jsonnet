local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'ath03',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '193.201.166.128/26',
    },
    ipv6+: {
      prefix: '2001:648:25e0::/64',
    },
  },
  transit+: {
    provider: 'Hellenic Telecommunications and Post Commision',
    uplink: '10g',
    asn: 'AS203348',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'GR',
    metro: 'ath',
    city: 'Athens',
    state: '',
    latitude: 37.9364,
    longitude: 23.9444,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
