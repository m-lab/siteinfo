local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'tlv01',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.165.203.195/32',
        },
        ipv6+: {
          address: '2600:1901:8160:9036::/128',
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
    continent_code: 'AS',
    country_code: 'IL',
    metro: 'tlv',
    city: 'Tel Aviv',
    state: '',
    latitude: 32.0114,
    longitude: 34.8867,
  },
  lifecycle+: {
    created: '2022-11-02',
    retired: '2024-08-07',
  },
}
