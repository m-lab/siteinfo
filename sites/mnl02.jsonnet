local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mnl02',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '103.43.213.128/26',
    },
    ipv6+: {
      prefix: '2401:da80:400:3::/64',
    },
  },
  transit+: {
    provider: 'RISE',
    uplink: '10g',
    asn: 'AS63927',
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
    created: '2020-02-25',
  },
}
