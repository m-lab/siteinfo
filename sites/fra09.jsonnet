local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'fra09',
  annotations+: {
    probability: 0.05,
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '35.242.213.162/32',
        },
        ipv6+: {
          address: '2600:1900:40d0:3976:0:37::/128',
        },
      },
      project: 'mlab-oti',
    },
  },
  transit+: {
    provider: 'Google LLC',
    uplink: '1g',
    asn: 'AS396982',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'DE',
    metro: 'fra',
    city: 'Frankfurt',
    state: '',
    latitude: 50.0333,
    longitude: 8.57056,
  },
  lifecycle+: {
    created: '2026-06-25',
  },
}
