local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'los02',
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
      prefix: '102.88.1.128/26',
    },
    ipv6+: {
      prefix: null
    },
  },
  transit+: {
    provider: 'MTN NIGERIA Communication limited',
    uplink: '10g',
    asn: 'AS29465',
  },
  location+: {
    continent_code: 'AF',
    country_code: 'NG',
    metro: 'los',
    city: 'Lagos',
    state: '',
    latitude: 6.5821,
    longitude: 3.3211,
  },
  lifecycle+: {
    created: '2020-05-27',
  },
}
