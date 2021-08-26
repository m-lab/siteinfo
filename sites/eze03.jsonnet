local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'eze03',
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
      prefix: '181.199.209.0/26',
    },
    ipv6+: {
      prefix: '2800:240:13::/64',
    },
  },
  transit+: {
    provider: 'TELEFONICA GLOBAL SOLUTIONS SL',
    uplink: '10g',
    asn: 'AS12956',
  },
  location+: {
    continent_code: 'SA',
    country_code: 'AR',
    metro: 'eze',
    city: 'Buenos Aires',
    state: '',
    latitude: -34.8222,
    longitude: -58.5358,
  },
  lifecycle+: {
    created: '2021-08-26',
  },
}

