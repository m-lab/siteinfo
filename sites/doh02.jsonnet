local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'doh02',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.18.62.214/32',
        },
        ipv6+: {
          address: '2600:1901:81c0:7ec:8000::/128',
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
    country_code: 'QA',
    metro: 'doh',
    city: 'Doha',
    state: '',
    latitude: 25.2731,
    longitude: 51.6081,
  },
  lifecycle+: {
    created: '2024-03-25',
  },
}

