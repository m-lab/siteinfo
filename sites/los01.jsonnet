local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2015-01-15',
    retired: '2019-03-07',
  },
  location+: {
    city: 'Lagos',
    continent_code: 'AF',
    country_code: 'NG',
    latitude: 6.57737,
    longitude: 3.32116,
    metro: 'los',
    state: '',
  },
  name: 'los01',
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
      prefix: '196.216.149.64/26',
    },
    ipv6+: {
      prefix: null,
    },
  },
  transit+: {
    asn: 'AS36932',
    provider: 'Internet Exchange Point of Nigeria',
    uplink: '1g',
  },
}
