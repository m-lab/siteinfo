local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'vie02',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '213.208.152.0/26',
    },
    ipv6+: {
      prefix: '2a07:1ec0:775::/48',
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
    created: '2019-09-04',
  },
}
