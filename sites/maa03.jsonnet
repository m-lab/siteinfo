local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'maa03',
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
      prefix: '49.45.151.128/26',
    },
    ipv6+: {
      prefix: '2405:203:9c0:2::/64',
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
    metro: 'maa',
    city: 'Chennai',
    state: '',
    latitude: 12.9941,
    longitude: 80.1709,
  },
  lifecycle+: {
    created: '2023-08-15',
  },
}
