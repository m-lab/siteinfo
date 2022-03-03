local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'iad07',
  annotations+: {
    type: 'virtual',
    provider: 'gcp',
  },
  machines: {
    mlab1: {
      disk: 'sda',
      iface: 'ens4',
      model: 'n1-highcpu-4',
      project: 'mlab-oti',
    },
  },
  network+: {
    ipv4+: {
      prefix: '34.85.166.60/32',
    },
    ipv6+: {
      prefix: null
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
    metro: 'iad',
    city: 'Washington',
    state: 'DC',
    latitude: 38.9444,
    longitude: -77.4558,
  },
  lifecycle+: {
    created: '2022-03-02',
  },
}
