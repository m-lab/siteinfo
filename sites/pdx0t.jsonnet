local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'pdx0t',
  annotations+: {
    type: 'virtual',
  },
  machines: {
    mlab1: {
      disk: 'sda',
      iface: 'eth0',
      model: 'gce',
      project: 'mlab-sandbox',
    },
  },
  network+: {
    ipv4+: {
      prefix: '34.102.109.222/32',
    },
    ipv6+: {
      prefix: null,
    },
  },
  transit+: {
    provider: 'Google Cloud Platform',
    uplink: '10g',
    asn: 'AS0000',
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
    created: '2022-01-12',
  },
}

