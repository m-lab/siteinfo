local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'den01',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '184.105.23.64/26',
    },
    ipv6+: {
      prefix: '2001:470:1:250::/64',
    },
  },
  transit+: {
    provider: 'Hurricane Electric LLC',
    uplink: '1g',
    asn: 'AS6939',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'den',
    city: 'Denver',
    state: 'CO',
    latitude: 39.8561,
    longitude: -104.6737,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
