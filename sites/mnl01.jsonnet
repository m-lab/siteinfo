local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mnl01',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '202.90.156.0/26',
    },
    ipv6+: {
      prefix: '2001:d18:0:35::/64',
    },
  },
  transit+: {
    provider: 'Department of Science and Technology',
    uplink: '10g',
    asn: 'AS9821',
  },
  switch+: {
    flow_control: 'no',
  },
  location+: {
    continent_code: 'AS',
    country_code: 'PH',
    metro: 'mnl',
    city: 'Manila',
    state: '',
    latitude: 14.5086,
    longitude: 121.0194,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
