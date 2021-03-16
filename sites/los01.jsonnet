local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations: {
    type: 'physical',
  },
  lifecycle: {
    created: '2021-03-16',
  },
  location: {
    city: 'Lagos',
    continent_code: 'AF',
    country_code: 'NG',
    latitude: 6.5821,
    longitude: 3.3211,
    metro: {
      metro: 'los',
    },
    state: '',
  },
  name: 'los01',
  network: {
    ipv4: {
      prefix: '196.216.149.64/26',
    },
    ipv6: {
      prefix: '',
    },
  },
  transit: {
    asn: 'AS36932',
    provider: 'Internet Exchange Point of Nigeria',
    uplink: '1g',
  },
}
