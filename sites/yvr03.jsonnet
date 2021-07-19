local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'yvr03',
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
      prefix: '38.88.76.0/26',
    },
    ipv6+: {
      prefix: '2001:550:7200:1::/64',
    },
  },
  transit+: {
    provider: 'Cogent Communications',
    uplink: '10g',
    asn: 'AS174',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'CA',
    metro: 'yvr',
    city: 'Vancouver',
    state: '',
    latitude: 49.1902,
    longitude: -123.1837,
  },
  lifecycle+: {
    created: '2021-07-19',
  },
}
