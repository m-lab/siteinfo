local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'hkg02',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '64.235.254.2/26',
    },
    ipv6+: {
      prefix: '2400:f780:1f:c::/64',
    },
  },
  transit+: {
    provider: 'GTT Netherlands B.V.',
    uplink: '10g',
    asn: 'AS5580',
  },
  location+: {
    continent_code: 'AS',
    country_code: 'HK',
    metro: 'hkg',
    city: 'Hong Kong',
    state: '',
    latitude: 22.3089,
    longitude: 113.9144,
  },
  lifecycle+: {
    created: '2020-02-13',
  },
}