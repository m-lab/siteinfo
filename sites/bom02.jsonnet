local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'bom02',
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
      prefix: '14.143.58.128/26',
    },
    ipv6+: {
      prefix: '2403:0:100:66::/64',
    },
  },
  transit+: {
    provider: 'TATA Communications formerly VSNL is Leading ISP',
    uplink: '10g',
    asn: 'AS4755',
  },
  location+: {
    continent_code: 'AS',
    country_code: 'IN',
    metro: 'bom',
    city: 'Mumbai',
    state: '',
    latitude: 20.600792,
    longitude: 78.961560,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
