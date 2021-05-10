local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'hnd04',
  annotations+: {
    type: 'physical',
  },
  machines+: {
    mlab1+: {
      model: r630,
    },
    mlab2+: {
      model: r630,
    },
    mlab3+: {
      model: r630,
    },
    mlab4+: {
      model: r630,
    },
  },
  network+: {
    ipv4+: {
      prefix: '64.235.255.128/26',
    },
    ipv6+: {
      prefix: '2400:f780:1f:d::/64',
    },
  },
  transit+: {
    provider: 'GTT Netherlands B.V.',
    uplink: '10g',
    asn: 'AS5580',
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
    created: '2020-02-13',
  },
}
