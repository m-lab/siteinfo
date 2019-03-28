local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'atl07',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '209.170.91.128/26',
    },
    ipv6+: {
      prefix: '2001:2030:0:42::/64',
    },
  },
  transit+: {
    provider: 'Telia Company AB',
    uplink: '10g',
    asn: 'AS1299',
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
