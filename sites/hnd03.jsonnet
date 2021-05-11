local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'hnd03',
  annotations+: {
    type: 'physical',
  },
  machines+: {
    mlab1+: {
      model: 'r630',
    },
    mlab2+: {
      model: 'r630',
    },
    mlab3+: {
      model: 'r630',
    },
    mlab4+: {
      model: 'r630',
    },
  },
  network+: {
    ipv4+: {
      prefix: '111.109.1.64/26',
    },
    ipv6+: {
      prefix: '2001:268:809:b::/64',
    },
  },
  transit+: {
    provider: 'KDDI Corporation',
    uplink: '10g',
    asn: 'AS2516',
  },
  location+: {
    continent_code: 'AS',
    country_code: 'JP',
    metro: 'hnd',
    city: 'Tokyo',
    state: '',
    latitude: 35.5522,
    longitude: 139.78,
  },
  lifecycle+: {
    created: '2019-06-24',
  },
}
