local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2021-03-16',
  },
  location+: {
    city: 'Turin',
    continent_code: 'EU',
    country_code: 'IT',
    latitude: 45.2008,
    longitude: 7.6497,
    metro: 'trn',
    state: '',
  },
  name: 'trn01',
  network+: {
    ipv4+: {
      prefix: '194.116.85.192/26',
    },
    ipv6+: {
      prefix: '2001:7f8:23:307::/64',
    },
  },
  transit+: {
    asn: 'AS41364',
    provider: 'CONSORZIO TOP IX - TORINO E PIEMONTE EXCHANGE POINT CC',
    uplink: '1g',
  },
}
