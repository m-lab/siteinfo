local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'sin02',
  annotations+: {
    probability: 0.5,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.124.169.175/32',
        },
        ipv6+: {
          address: '2600:1900:4080:5afb::/128',
        },
      },
      project: 'mlab-oti',
    },
  },
  transit+: {
    provider: 'Google LLC',
    uplink: '1g',
    asn: 'AS15169',
  },
  location+: {
    continent_code: 'AS',
    country_code: 'SG',
    metro: 'sin',
    city: 'Singapore',
    state: '',
    latitude: 1.355,
    longitude: 103.988,
  },
  lifecycle+: {
    created: '2022-03-02',
  },
}
