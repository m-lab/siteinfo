local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'fra07',
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
      prefix: '34.159.159.206/32',
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
    continent_code: 'EU',
    country_code: 'DE',
    metro: 'fra',
    city: 'Frankfurt',
    state: '',
    latitude: 50.0379,
    longitude: 8.5622,
  },
  lifecycle+: {
    created: '2022-03-02',
  },
}
