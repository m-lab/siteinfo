local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'sin02',
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
      prefix: '34.124.169.175/32',
    },
    ipv6+: {
      prefix: null,
    },
  },
  transit+: {
    provider: 'Google LLC',
    uplink: '1g',
    asn: 'AS15169',
  },
  location+: {
    continent_code: 'AS',
    country_code: 'SG',
    metro: 'sin',
    city: 'Singapore',
    state: '',
    latitude: 1.355,
    longitude: 103.988,
  },
  lifecycle+: {
    created: '2022-03-02',
  },
}
