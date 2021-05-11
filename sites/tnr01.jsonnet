local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'tnr01',
  annotations+: {
    type: 'physical',
  },
  machines+: {
    mlab1+: {
      model: 'r630',
    },
    mlab2+: {
      model: 'r630',
    },
    mlab3+: {
      model: 'r630',
    },
    mlab4+: {
      model: 'r630',
    },
  },
  network+: {
    ipv4+: {
      prefix: '41.188.12.64/26',
    },
    ipv6+: {
      prefix: null,
    },
  },
  transit+: {
    provider: 'Telecom Malagasy',
    uplink: '1g',
    asn: 'AS37054',
  },
  switch+: {
    auto_negotiation: 'no',
  },
  location+: {
    continent_code: 'AF',
    country_code: 'MG',
    metro: 'tnr',
    city: 'Antananarivo',
    state: '',
    latitude: -18.7969,
    longitude: 47.4788,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
