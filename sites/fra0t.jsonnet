local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'fra0t',
  annotations+: {
    type: 'cloud',
  },
  machines+: {
    mlab1+: {
      model: 'r630',
    },
  },
  network+: {
    ipv4+: {
      prefix: '34.107.116.1/32',
    },
    ipv6+: {
      prefix: null,
    }
  },
  transit+: {
    provider: '',
    uplink: '10g',
    asn: '',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'DE',
    metro: 'fra',
    city: 'Frankfurt',
    state: '',
    latitude: 50.0379,
    longitude: 8.5622,
  },
  lifecycle+: {
    created: '2021-05-26',
  },
}
