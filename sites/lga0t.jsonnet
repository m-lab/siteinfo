local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lga0t',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '4.14.159.64/26',
    },
    ipv6+: {
      prefix: '2001:1900:2100:2d::/64',
    },
  },
  transit+: {
    provider: 'Level3',
    uplink: '10g',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'lga',
    city: 'New York',
    state: 'NY',
    latitude: 40.766700,
    longitude: -73.866700,
  },
  lifecycle+: {
    created: '2018-01-01',
  },
}
