local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'bcn01',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '91.213.30.192/26',
    },
    ipv6+: {
      prefix: '2001:67c:137c:5::/64',
    },
  },
  transit+: {
    provider: 'Consorci de Serveis Universitaris de Catalunya',
    uplink: '10g',
    asn: 'AS49638',
  },
  switch+: {
    flow_control: 'no',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'ES',
    metro: 'bcn',
    city: 'Barcelona',
    state: '',
    latitude: 41.2974,
    longitude: 2.0811,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
