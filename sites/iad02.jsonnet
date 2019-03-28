local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'iad02',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '38.90.140.128/26',
    },
    ipv6+: {
      prefix: '2001:550:200:7::/64',
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
    metro: 'iad',
    city: 'Washington',
    state: 'DC',
    latitude: 38.9444,
    longitude: -77.4558,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
