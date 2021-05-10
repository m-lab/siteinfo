local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'del02',
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
      prefix: '61.246.223.0/26',
    },
    ipv6+: {
      prefix: null,
    },
  },
  transit+: {
    provider: 'BHARTI Airtel Ltd.',
    uplink: '10g',
    asn: 'AS9498',
  },
  location+: {
    continent_code: 'AS',
    country_code: 'IN',
    metro: 'del',
    city: 'New Delhi',
    state: '',
    latitude: 28.5562,
    longitude: 77.1000,
  },
  lifecycle+: {
    created: '2019-09-09',
  },
}
