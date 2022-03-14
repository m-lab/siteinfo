local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'cgk01',
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
      prefix: '34.101.131.175/32',
    },
    ipv6+: {
      prefix: null,
    },
  },
  transit+: {
    provider: 'Google LLC',
    uplink: '1g',
    asn: 'AS139190',
  },
  location+: {
    continent_code: 'AS',
    country_code: 'ID',
    metro: 'cgk',
    city: 'Jakarta',
    state: '',
    latitude: -6.1256,
    longitude: 106.6558,
  },
  lifecycle+: {
    created: '2022-03-02',
  },
}
