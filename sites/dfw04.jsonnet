local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2021-03-16',
  },
  location+: {
    city: 'Dallas',
    continent_code: 'NA',
    country_code: 'US',
    latitude: 32.8969,
    longitude: -97.0381,
    metro: 'dfw',
    state: '',
  },
  name: 'dfw04',
  network+: {
    ipv4+: {
      prefix: '208.177.76.64/26',
    },
    ipv6+: {
      prefix: '2610:18:10e:2::/64',
    },
  },
  transit+: {
    asn: 'AS2828',
    provider: 'XO Communications',
    uplink: '1g',
  },
}
