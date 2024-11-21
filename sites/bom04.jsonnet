local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'bom04',
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
      prefix: '49.45.151.0/26',
    },
    ipv6+: {
      prefix: '2405:203:9c0::/64',
    },
  },
  transit+: {
    provider: 'Reliance Jio Infocomm Limited',
    uplink: '10g',
    asn: 'AS55836',
  },
  location+: {
    continent_code: 'AS',
    country_code: 'IN',
    metro: 'bom',
    city: 'Mumbai',
    state: '',
    latitude: 19.0887,
    longitude: 72.8679,
  },
  lifecycle+: {
    created: '2023-08-15',
  },
}
