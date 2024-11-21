local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mrs02',
  annotations+: {
    type: 'physical',
  },
  machines+: {
    mlab1+: {
      model: 'r640',
    },
    mlab2+: {
      model: 'r640',
    },
    mlab3+: {
      model: 'r640',
    },
    mlab4+: {
      model: 'r640',
    },
  },
  network+: {
    ipv4+: {
      prefix: '154.14.11.192/26',
    },
    ipv6+: {
      prefix: '2001:668:1f:e4::/64',
    },
  },
  transit+: {
    provider: 'GTT Communications Inc.',
    uplink: '10g',
    asn: 'AS3257',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'FR',
    metro: 'mrs',
    city: 'Marseille',
    state: '',
    latitude: 43.4393,
    longitude: 5.22142,
  },
  lifecycle+: {
    created: '2020-02-25',
  },
}
