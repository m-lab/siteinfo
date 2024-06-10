local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'hnl02',
  annotations+: {
    donated: true,
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
      prefix: '38.64.64.64/26',
    },
    ipv6+: {
      prefix: '2001:550:a03::/64',
    },
  },
  transit+: {
    provider: 'Cogent Communications',
    uplink: '10g',
    asn: 'AS174',
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
    created: '2024-04-02',
  },
}

