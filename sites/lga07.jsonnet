local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lga07',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '66.151.223.128/26',
    },
    ipv6+: {
      prefix: '2600:c0f:2002::/64',
    },
  },
  transit+: {
    provider: 'Internap Corporation',
    uplink: '1g',
    asn: 'AS10910',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'lga',
    city: 'New York',
    state: 'NY',
    latitude: 40.7667,
    longitude: -73.8667,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
