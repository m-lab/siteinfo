local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'atl02',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '38.112.151.64/26',
    },
    ipv6+: {
      prefix: '2001:550:5b00:1::/64',
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
    metro: 'atl',
    city: 'Atlanta',
    state: 'GA',
    latitude: 33.6367,
    longitude: -84.4281,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
