local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'ber01',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.32.35.146/32',
        },
        ipv6+: {
          address: '2600:1901:81f0:266::/128',
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
    latitude: 52.3514,
    longitude: 13.4939,
  },
  lifecycle+: {
    created: '2023-10-11',
    retired: '2024-08-07',
  },
}
