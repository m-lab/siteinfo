local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lim03',
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
      prefix: '181.199.209.128/26',
    },
    ipv6+: {
      prefix: '2800:240:13:2::/64',
    },
  },
  transit+: {
    provider: 'TELEFONICA GLOBAL SOLUTIONS SL',
    uplink: '10g',
    asn: 'AS12956',
  },
  location+: {
    continent_code: 'SA',
    country_code: 'PE',
    metro: 'lim',
    city: 'Lima',
    state: '',
    latitude: -12.0219,
    longitude: -77.1143,
  },
  lifecycle+: {
    created: '2021-08-26',
    retired: '2024-08-15',
  },
}
