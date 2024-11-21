local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'yqm02',
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
      prefix: '216.66.10.64/26',
    },
    ipv6+: {
      prefix: '2001:470:1:ed6::/64',
    },
  },
  transit+: {
    provider: 'Hurricane Electric LLC',
    uplink: '10g',
    asn: 'AS6939',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'CA',
    metro: 'yqm',
    city: 'Moncton',
    state: '',
    latitude: 46.1122,
    longitude: -64.6786,
  },
  lifecycle+: {
    created: '2022-10-27',
  },
}
