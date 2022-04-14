local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'syd06',
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
      prefix: '162.213.101.64/26',
    },
    ipv6+: {
      prefix: '',
    },
  },
  transit+: {
    provider: 'Superloop',
    uplink: '10g',
    asn: ' AS38195',
  },
  location+: {
    continent_code: 'OC',
    country_code: 'AU',
    metro: 'syd',
    city: 'Sydney',
    state: '',
    latitude: -33.9461,
    longitude: 151.177,
  },
  lifecycle+: {
    created: '2022-04-14',
  },
}
