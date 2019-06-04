local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'atl06',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '70.42.177.64/26',
    },
    ipv6+: {
      prefix: '2600:c0b:2002:5::/64',
    },
  },
  transit+: {
    provider: 'Internap Corporation',
    uplink: '1g',
    asn: 'AS14745',
  },
  switch+: {
    auto_negotiation: 'no',
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
