local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'vie01',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '213.208.152.0/26',
    },
    ipv6+: {
      prefix: '2a01:190:1700:38::/64',
    },
  },
  transit+: {
    provider: 'Next Layer Telekommunikationsdienstleistungs- und Beratungs GmbH',
    uplink: '1g',
    asn: 'AS1764',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'AT',
    metro: 'vie',
    city: 'Vienna',
    state: '',
    latitude: 48.269,
    longitude: 16.4107,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
