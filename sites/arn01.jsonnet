local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2012-05-04',
    retired: '2017-10-31',
  },
  location+: {
    city: 'Stockholm',
    continent_code: 'EU',
    country_code: 'SE',
    latitude: 59.6519,
    longitude: 17.9186,
    metro: {
      metro: 'arn',
    },
    state: '',
  },
  name: 'arn01',
  network+: {
    ipv4+: {
      prefix: '213.248.112.64/26',
    },
    ipv6+: {
      prefix: '2001:2030:0:1b::/64',
    },
  },
  transit+: {
    asn: 'AS1299',
    provider: 'Telia',
    uplink: '1g',
  },
}
