local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'sof01',
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
      prefix: '212.221.42.128/26',
    },
    ipv6+: {
      prefix: '2001:668:1f:fe6f::/64',
    },
  },
  transit+: {
    provider: 'GTT Communications Inc.',
    uplink: '10g',
    asn: 'AS3257',
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
    created: '2022-04-28',
  },
}

