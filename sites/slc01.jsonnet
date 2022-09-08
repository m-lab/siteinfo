local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'slc01',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.106.93.110/32',
        },
        ipv6+: {
          address: '2600:1900:4170:2ab0::/128',
        },
      },
      project: 'mlab-oti',
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
    metro: 'slc',
    city: 'Salt Lake City',
    state: 'UT',
    latitude: 40.7883,
    longitude: -111.9778,
  },
  lifecycle+: {
    created: '2022-09-08',
  },
}
