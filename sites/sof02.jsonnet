local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'sof02',
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
      prefix: '209.170.79.0/26',
    },
    ipv6+: {
      prefix: '2001:2030:0:3::/64',
    },
  },
  transit+: {
    provider: 'Telia Company AB',
    uplink: '10g',
    asn: 'AS1299',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'BG',
    metro: 'sof',
    city: 'Sofia',
    state: '',
    latitude: 42.6950,
    longitude: 23.4083,
  },
  lifecycle+: {
    created: '2022-05-19',
  },
}

