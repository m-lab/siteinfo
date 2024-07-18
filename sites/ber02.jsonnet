local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'ber02',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.32.63.86/32',
        },
        ipv6+: {
          address: '2600:1901:81f0:266:8000:1::/128',
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
    metro: 'ber',
    city: 'Berlin',
    state: '',
    latitude: 52.3667,
    longitude: 13.5033,
  },
  lifecycle+: {
    created: '2024-07-18',
  },
}

