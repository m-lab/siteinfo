local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'per02',
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
      prefix: '162.213.101.0/26',
    },
    ipv6+: {
      prefix: '2401:d000:b180::/64',
    },
  },
  transit+: {
    provider: 'Superloop',
    uplink: '10g',
    asn: 'AS38195',
  },
  location+: {
    continent_code: 'OC',
    country_code: 'AU',
    metro: 'per',
    city: 'Perth',
    state: '',
    latitude: -31.9403,
    longitude: 115.967,
  },
  lifecycle+: {
    created: '2022-02-04',
  },
}
