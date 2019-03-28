local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'trn01',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '194.116.85.192/26',
    },
    ipv6+: {
      prefix: '2001:7f8:23:307::/64',
    },
  },
  transit+: {
    provider: 'CONSORZIO TOP IX - TORINO E PIEMONTE EXCHANGE POINT CC',
    uplink: '10g',
    asn: 'AS41364',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'IT',
    metro: 'trn',
    city: 'Turin',
    state: '',
    latitude: 45.2008,
    longitude: 7.6497,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
