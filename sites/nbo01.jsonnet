local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'nbo01',
  annotations+: {
    donated: true,
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
      prefix: '197.136.0.64/26',
    },
    ipv6+: {
      prefix: '2c0f:fe08:10:64::/64',
    },
  },
  transit+: {
    provider: 'Kenya Education Network',
    uplink: '10g',
    asn: 'AS36914',
  },
  location+: {
    continent_code: 'AF',
    country_code: 'KE',
    metro: 'nbo',
    city: 'Nairobi',
    state: '',
    latitude: -1.3192,
    longitude: 36.9258,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
