local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'maa02',
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
      prefix: '61.95.154.64/26',
    },
    ipv6+: {
      prefix: '2404:a800:3200:23::/64',
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
    metro: 'maa',
    city: 'Chennai',
    state: '',
    latitude: 21.0686228,
    longitude: 82.7525294,
  },
  lifecycle+: {
    created: '2019-09-09',
  },
}
