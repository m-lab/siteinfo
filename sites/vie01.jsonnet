local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations: {
    type: 'physical',
  },
  lifecycle: {
    created: '2021-03-16',
  },
  location: {
    city: 'Vienna',
    continent_code: 'EU',
    country_code: 'AT',
    latitude: 48.269,
    longitude: 16.4107,
    metro: {
      metro: 'vie',
    },
    state: '',
  },
  name: 'vie01',
  network: {
    ipv4: {
      prefix: '213.208.152.0/26',
    },
    ipv6: {
      prefix: '2a01:190:1700:38::/64',
    },
  },
  transit: {
    asn: 'AS1764',
    provider: 'Next Layer Telekommunikationsdienstleistungs- und Beratungs GmbH',
    uplink: '1g',
  },
}
