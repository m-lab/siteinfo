local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'hnl01',
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
      prefix: '74.199.156.192/26',
    },
    ipv6+: {
      prefix: '2001:668:1f:fe06::/64',
    },
  },
  transit+: {
    provider: 'GTT Communications Inc.',
    uplink: '10g',
    asn: 'AS3257',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'hnl',
    city: 'Honolulu',
    state: 'HI',
    latitude: 21.3254,
    longitude: -157.9240,
  },
  lifecycle+: {
    created: '2021-08-24',
  },
}
