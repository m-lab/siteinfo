local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'ord07',
  annotations+: {
    type: 'virtual',
  },
  machines: {
    mlab1: {
      disk: 'sda',
      iface: 'ens4',
      model: 'gce',
      project: 'mlab-oti',
    },
  },
  network+: {
    ipv4+: {
      prefix: '35.226.8.239/32',
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
    continent_code: 'NA',
    country_code: 'US',
    metro: 'ord',
    city: 'Chicago',
    state: 'IL',
    latitude: 41.9786,
    longitude: -87.9047,
  },
  lifecycle+: {
    created: '2022-03-02',
  },
}
