local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'yvr02',
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
      prefix: '209.170.101.0/26',
    },
    ipv6+: {
      prefix: '2001:2030:0:5c::/64',
    },
  },
  transit+: {
    provider: 'Telia Company AB',
    uplink: '10g',
    asn: 'AS1299',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'CA',
    metro: 'yvr',
    city: 'Vancouver',
    state: '',
    latitude: 49.1939,
    longitude: -123.184,
  },
  lifecycle+: {
    created: '2021-07-12',
    retired: '2024-08-15',
  },
}
