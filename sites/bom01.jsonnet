local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'bom01',
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
      prefix: '125.18.112.64/26',
    },
    ipv6+: {
      prefix: '2404:a800:2000:217::/64',
    },
  },
  transit+: {
    provider: 'BHARTI Airtel Ltd.',
    uplink: '1g',
    asn: 'AS9498',
  },
  switch+: {
    auto_negotiation: 'no',
  },
  location+: {
    continent_code: 'AS',
    country_code: 'IN',
    metro: 'bom',
    city: 'Mumbai',
    state: '',
    latitude: 19.0886,
    longitude: 72.8681,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
