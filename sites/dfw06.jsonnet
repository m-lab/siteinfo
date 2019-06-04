local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'dfw06',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '63.251.44.192/26',
    },
    ipv6+: {
      prefix: '2600:c12:1002:4::/64',
    },
  },
  transit+: {
    provider: 'Internap Corporation',
    uplink: '1g',
    asn: 'AS12179',
  },
  switch+: {
    auto_negotiation: 'no',
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
