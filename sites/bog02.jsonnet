local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'bog02',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '190.98.179.192/26',
    },
    ipv6+: {
      prefix: '2001:1498:1:965::/64',
    },
  },
  transit+: {
    provider: 'Telefonica International Wholesale Services',
    uplink: '10g',
    asn: 'AS12956',
  },
  location+: {
    continent_code: 'SA',
    country_code: 'CO',
    metro: 'bog',
    city: 'Bogotá',
    state: '',
    latitude: 4.69715,
    longitude: -74.14329,
  },
  lifecycle+: {
    created: '2020-02-26',
  },
}
