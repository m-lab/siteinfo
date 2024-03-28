local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'hkg01',
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
      prefix: '183.178.65.0/26',
    },
    ipv6+: {
      prefix: '2403:f500:4800::/64',
    },
  },
  transit+: {
    provider: 'HK Broadband Network Ltd.',
    uplink: '10g',
    asn: 'AS10103',
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
    created: '2019-09-27',
    retired: '2024-03-28',
  },
}
