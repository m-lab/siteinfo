local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mad03',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '80.239.229.128/26',
    },
    ipv6+: {
      prefix: '2001:2030:34::/64',
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
    country_code: 'ES',
    metro: 'mad',
    city: 'Madrid',
    state: '',
    latitude: 40.4667,
    longitude: -3.5667,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
