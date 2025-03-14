local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'hnd05',
  annotations+: {
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
      prefix: '61.200.88.0/26',
    },
    ipv6+: {
      prefix: '2001:218:2000:3::/64',
    },
  },
  transit+: {
    provider: 'NTT America, Inc.',
    uplink: '10g',
    asn: 'AS2914',
  },
  location+: {
    continent_code: 'AS',
    country_code: 'JP',
    metro: 'hnd',
    city: 'Tokyo',
    state: '',
    latitude: 35.5533,
    longitude: 139.781,
  },
  lifecycle+: {
    created: '2020-08-20',
    retired: '2024-11-04',
  },
}
