local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'ber03',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      model: 'e2-highcpu-4',
      network+: {
        ipv4+: {
          address: '34.32.90.187/32',
        },
        ipv6+: {
          address: '2600:1901:81f0:266:0:52::/128',
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
          address: '34.32.40.51/32',
        },
        ipv6: {
          address: '2600:1901:81f0:266:0:50::/128',
        },
      },
      project: 'mlab-oti',
    },
    mlab3: {
      disk: 'pd-ssd',
      iface: 'ens4',
      model: 'e2-highcpu-4',
      network: {
        ipv4: {
          address: '34.32.4.83/32',
        },
        ipv6: {
          address: '2600:1901:81f0:266:0:51::/128',
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
    created: '2026-06-25',
  },
}
