local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'hkg02',
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
      prefix: '64.235.254.0/26',
    },
    ipv6+: {
      prefix: '2400:f780:1f:c::/64',
    },
  },
  transit+: {
    provider: 'GTT Netherlands B.V.',
    uplink: '10g',
    asn: 'AS5580',
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
    created: '2020-02-13',
    retired: '2024-08-15',
  },
}
