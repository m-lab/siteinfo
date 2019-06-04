local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lhr02',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '80.239.170.192/26',
    },
    ipv6+: {
      prefix: '2001:2030:33::/64',
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
    country_code: 'GB',
    metro: 'lhr',
    city: 'London',
    state: '',
    latitude: 51.4697,
    longitude: -0.4514,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
