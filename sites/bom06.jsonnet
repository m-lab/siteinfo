local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'bom06',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.100.217.193/32',
        },
        ipv6+: {
          address: '2600:1900:40a0:f2f2:8000::/128',
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
    country_code: 'IN',
    metro: 'bom',
    city: 'Mumbai',
    state: '',
    latitude: 19.0886,
    longitude: 72.8681,
  },
  lifecycle+: {
    created: '2024-03-25',
  },
}

