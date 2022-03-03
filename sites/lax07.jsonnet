local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lax07',
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
      prefix: '34.102.13.15/32',
    },
    ipv6+: {
      prefix: '2600:1900:4120:30e8::/128',
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
    created: '2022-03-02',
  },
}
