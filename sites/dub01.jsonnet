local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'dub01',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '193.1.12.192/26',
    },
    ipv6+: {
      prefix: '2001:770:b5::/64',
    },
  },
  transit+: {
    provider: 'HEAnet Limited',
    uplink: '10g',
    asn: 'AS1213',
  },
  switch+: {
    flow_control: 'no',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'IE',
    metro: 'dub',
    city: 'Dublin',
    state: '',
    latitude: 53.4333,
    longitude: -6.25,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
