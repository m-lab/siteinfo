local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'sjc01',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '70.42.244.64/26',
    },
    ipv6+: {
      prefix: '2600:c02:2:82::/64',
    },
  },
  transit+: {
    provider: 'Internap Corporation',
    uplink: '1g',
    asn: 'AS12182',
  },
  switch+: {
    auto_negotiation: 'no',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'sjc',
    city: 'San Francisco Bay Area',
    state: 'CA',
    latitude: 37.3833,
    longitude: -122.0667,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
