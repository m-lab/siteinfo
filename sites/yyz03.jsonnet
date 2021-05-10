local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'yyz03',
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
      prefix: '209.120.241.0/26',
    },
    ipv6+: {
      prefix: '2001:668:1f:ff0d::/64',
    },
  },
  transit+: {
    provider: 'GTT Communications Inc.',
    uplink: '10g',
    asn: 'AS3257',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'CA',
    metro: 'yyz',
    city: 'Toronto',
    state: '',
    latitude: 43.6767,
    longitude: -79.6306,
  },
  lifecycle+: {
    created: '2020-09-29',
  },
}
