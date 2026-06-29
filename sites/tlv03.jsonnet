local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'tlv03',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.165.219.126/32',
        },
        ipv6+: {
          address: '2600:1901:8160:9036:0:4a::/128',
        },
      },
      project: 'mlab-oti',
    },
    mlab2: {
      disk: 'pd-ssd',
      iface: 'ens4',
      model: 'n2-highcpu-4',
      network: {
        ipv4: {
          address: '34.165.247.200/32',
        },
        ipv6: {
          address: '2600:1901:8160:9036:0:4c::/128',
        },
      },
      project: 'mlab-oti',
    },
    mlab3: {
      disk: 'pd-ssd',
      iface: 'ens4',
      model: 'n2-highcpu-4',
      network: {
        ipv4: {
          address: '34.165.47.149/32',
        },
        ipv6: {
          address: '2600:1901:8160:9036:0:4b::/128',
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
    created: '2026-06-25',
  },
}
