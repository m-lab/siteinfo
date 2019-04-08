local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'fra02',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '77.67.114.0/26',
    },
    ipv6+: {
      prefix: '2001:668:1f:5e::/64',
    },
  },
  transit+: {
    provider: 'GTT Communications Inc.',
    uplink: '10g',
    asn: 'AS3257',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'fra',
    city: 'Frankfurt',
    state: '',
    latitude: 50.0379,
    longitude: 8.5622,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
