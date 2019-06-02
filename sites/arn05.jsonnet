local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'arn05',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '77.67.119.64/26',
    },
    ipv6+: {
      prefix: '2001:668:1f:6a::/64',
    },
  },
  transit+: {
    provider: 'GTT Communications Inc.',
    uplink: '10g',
    asn: 'AS3257',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'SE',
    metro: 'arn',
    city: 'Stockholm',
    state: '',
    latitude: 59.6519,
    longitude: 17.9186,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
