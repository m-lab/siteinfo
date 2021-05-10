local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2012-02-03',
    retired: '2019-09-04',
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
