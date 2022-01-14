local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'pdx0t',
  annotations+: {
    type: 'virtual',
  },
  machines: {
    mlab1: {
      disk: 'sda',
      iface: 'ens4',
      model: 'gce',
      project: 'mlab-sandbox',
    },
  },
  network+: {
    ipv4+: {
      prefix: '35.247.89.22/32',
    },
    ipv6+: {
      prefix: null,
    },
  },
  transit+: {
    provider: 'Google Cloud Platform',
    uplink: '10g',
    asn: null,
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'pdx',
    city: 'Portland',
    state: 'OR',
    latitude: 45.5886,
    longitude: -122.5975,
  },
  lifecycle+: {
    created: '2022-01-14',
  },
}

