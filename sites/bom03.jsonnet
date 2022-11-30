local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'bom03',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.93.189.150/32',
        },
        ipv6+: {
          address: '2600:1900:40a0:f2f2::/128',
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
          address: '34.100.248.78/32',
        },
        ipv6: {
          address: '2600:1900:40a0:f2f2:0:1::/128',
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
          address: '34.100.186.169/32',
        },
        ipv6: {
          address: '2600:1900:40a0:f2f2:0:2::/128',
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
    created: '2022-09-08',
  },
}
