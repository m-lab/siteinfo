local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2016-01-01',
    retired: '2017-07-19',
  },
  location+: {
    city: 'Dallas',
    continent_code: 'NA',
    country_code: 'US',
    latitude: 32.8969,
    longitude: -97.0381,
    metro: 'dfw',
    state: '',
  },
  name: 'dfw04',
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
      prefix: '208.177.76.64/26',
    },
    ipv6+: {
      prefix: '2610:18:10e:2::/64',
    },
  },
  transit+: {
    asn: 'AS2828',
    provider: 'XO Communications',
    uplink: '1g',
  },
}
