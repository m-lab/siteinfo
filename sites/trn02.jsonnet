local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'trn02',
  annotations+: {
    type: 'physical',
  },
  machines+: {
    mlab1+: {
      model: 'r630',
    },
    mlab2+: {
      model: 'r630',
    },
    mlab3+: {
      model: 'r630',
    },
    mlab4+: {
      model: 'r630',
    },
  },
  network+: {
    ipv4+: {
      prefix: '194.116.85.192/26',
    },
    ipv6+: {
      prefix: '2a07:1ec0:775::/48',
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
    created: '2019-09-04',
  },
}
