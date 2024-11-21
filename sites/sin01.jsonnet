local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'sin01',
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
      prefix: '180.87.97.64/26',
    },
    ipv6+: {
      prefix: '2405:2000:301::/64',
    },
  },
  transit+: {
    provider: 'TATA COMMUNICATIONS (AMERICA) INC',
    uplink: '10g',
    asn: 'AS6453',
  },
  location+: {
    continent_code: 'AS',
    country_code: 'SG',
    metro: 'sin',
    city: 'Singapore',
    state: '',
    latitude: 1.35019,
    longitude: 103.994,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
