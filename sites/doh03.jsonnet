local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'doh03',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      model: 'e2-highcpu-4',
      network+: {
        ipv4+: {
          address: '34.18.235.177/32',
        },
        ipv6+: {
          address: '2600:1901:81c0:7ec:0:4e::/128',
        },
      },
      project: 'mlab-oti',
    },
    mlab2: {
      disk: 'pd-ssd',
      iface: 'ens4',
      model: 'e2-highcpu-4',
      network: {
        ipv4: {
          address: '34.18.99.116/32',
        },
        ipv6: {
          address: '2600:1901:81c0:7ec:0:4d::/128',
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
    created: '2026-06-25',
  },
}
