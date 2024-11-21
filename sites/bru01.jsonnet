local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'bru01',
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
      prefix: '195.89.146.128/26',
    },
    ipv6+: {
      prefix: '2001:5005:200::/64',
    },
  },
  transit+: {
    provider: 'Vodafone Group PLC',
    uplink: '10g',
    asn: 'AS1273',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'BE',
    metro: 'bru',
    city: 'Brussels',
    state: '',
    latitude: 50.9014,
    longitude: 4.48444,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
