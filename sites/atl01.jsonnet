local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'atl01',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '4.71.254.128/26',
    },
    ipv6+: {
      prefix: '2001:1900:3001:c::/64',
    },
  },
  transit+: {
    provider: 'Level 3 Parent, LLC',
    uplink: '1g',
    asn: 'AS3356',
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
