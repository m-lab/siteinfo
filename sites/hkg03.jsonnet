local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'hkg03',
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
      prefix: '154.18.169.64/26',
    },
    ipv6+: {
      prefix: '2402:4480:400::/64',
    },
  },
  transit+: {
    provider: 'Cogent Communications',
    uplink: '10g',
    asn: 'AS174',
  },
  location+: {
    continent_code: 'AS',
    country_code: 'HK',
    metro: 'hkg',
    city: 'Hong Kong',
    state: '',
    latitude: 22.3089,
    longitude: 113.9144,
  },
  lifecycle+: {
    created: '2021-07-19',
  },
}
