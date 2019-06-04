local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'arn04',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '62.115.225.128/26',
    },
    ipv6+: {
      prefix: '2001:2030:0:38::/64',
    },
  },
  transit+: {
    provider: 'Telia Company AB',
    uplink: '10g',
    asn: 'AS1299',
  },
  switch+: {
    flow_control: 'no',
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
