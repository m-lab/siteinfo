local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'ord02',
  annotations+: {
    type: 'physical',
  },
  machines+: {
    mlab1+: {
      model: r630,
    },
    mlab2+: {
      model: r630,
    },
    mlab3+: {
      model: r630,
    },
    mlab4+: {
      model: r630,
    },
  },
  network+: {
    ipv4+: {
      prefix: '38.65.210.192/26',
    },
    ipv6+: {
      prefix: '2001:550:1b01:1::/64',
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
    metro: 'ord',
    city: 'Chicago',
    state: 'IL',
    latitude: 41.9786,
    longitude: -87.9047,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
