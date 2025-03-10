local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'hnd02',
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
      prefix: '210.151.179.128/26',
    },
    ipv6+: {
      prefix: '2001:260:8a::/64',
    },
  },
  transit+: {
    provider: 'BIGLOBE Inc.',
    uplink: '10g',
    asn: 'AS2518',
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
    created: '2019-01-01',
  },
}
