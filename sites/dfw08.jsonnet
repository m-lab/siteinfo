local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'dfw08',
  annotations+: {
    donated: true,
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
      prefix: '38.107.216.0/26',
    },
    ipv6+: {
      prefix: '2001:550:2000::/64',
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
    metro: 'dfw',
    city: 'Dallas',
    state: 'TX',
    latitude: 32.8969,
    longitude: -97.0381,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
