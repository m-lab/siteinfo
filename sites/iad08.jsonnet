local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'iad08',
  annotations+: {
    type: 'virtual',
    provider: 'gcp',
  },
  machines: {
    mlab4: {
      disk: 'sda',
      iface: 'ens4',
      model: 'n1-highcpu-4',
      project: 'mlab-staging',
    },
  },
  network+: {
    ipv4+: {
      prefix: '35.245.211.241/32',
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
    created: '2022-03-04',
  },
}

