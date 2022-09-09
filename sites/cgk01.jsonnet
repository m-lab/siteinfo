local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'cgk01',
  annotations+: {
    provider: 'gcp',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '34.101.131.175/32',
        },
        ipv6+: {
          address: '2600:1901:8170:40d1::/128',
        },
      },  
      project: 'mlab-oti',
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
