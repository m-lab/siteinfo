local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lax0t',
  annotations+: {
    type: 'virtual',
    provider: 'gcp',
  },
  machines: {
    mlab1: {
      disk: 'sda',
      iface: 'ens4',
      model: 'n1-highcpu-4',
      project: 'mlab-sandbox',
    },
  },
  network+: {
    ipv4+: {
      prefix: '34.94.47.22/32',
    },
    ipv6+: {
      prefix: '2600:1900:4120:8f83:0:2::/128',
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
    metro: 'lax',
    city: 'Los Angeles',
    state: 'CA',
    latitude: 33.9425,
    longitude: -118.4072,
  },
  lifecycle+: {
    created: '2022-02-17',
  },
}
