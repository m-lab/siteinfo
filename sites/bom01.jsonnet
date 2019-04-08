local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'bom01',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '125.18.112.64/26',
    },
    ipv6+: {
      prefix: '2404:a800:2000:217::/64',
    },
  },
  transit+: {
    provider: 'BHARTI Airtel Ltd.',
    uplink: '1g',
    asn: 'AS9498',
  },
  location+: {
    continent_code: 'AS',
    country_code: 'IN',
    metro: 'bom',
    city: 'Mumbai',
    state: '',
    latitude: 19.0886,
    longitude: 72.8681,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
