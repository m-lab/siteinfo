local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'chs0t',
  annotations+: {
    type: 'virtual',
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      disk: 'pd-standard',
      network+: {
        ipv4+: {
          address: '34.73.52.238/32',
        },
      },
      project: 'mlab-sandbox',
    },
    mlab2: {
      disk: 'pd-ssd',
      iface: 'ens4',
      model: 'n1-highcpu-4',
      network: {
        ipv4: {
          address: '34.74.30.247/32',
        },
        ipv6: {
          address: '2600:1900:4020:31cd:0:2::/128',
        },
      },
      project: 'mlab-sandbox',
    },
  },
  transit+: {
    provider: 'Google LLC',
    uplink: '1g',
    asn: 'AS396982',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'chs',
    city: 'Charleston',
    state: 'SC',
    latitude: 32.8986,
    longitude: -80.0406,
  },
  lifecycle+: {
    created: '2022-01-14',
  },
}
