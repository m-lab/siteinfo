local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'sea09',
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
      prefix: '34.105.122.11/32',
    },
    ipv6+: {
      prefix: null,
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
    metro: 'sea',
    city: 'Seattle',
    state: 'WA',
    latitude: 47.4489,
    longitude: -122.3094,
  },
  lifecycle+: {
    created: '2022-03-02',
  },
}
