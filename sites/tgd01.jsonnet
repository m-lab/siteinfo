local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'tgd01',
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
      prefix: '213.149.127.0/26',
    },
    ipv6+: {
      prefix: '2a00:fe80:0:104::/64',
    },
  },
  transit+: {
    provider: 'Crnogorski Telekom a.d.Podgorica',
    uplink: '10g',
    asn: 'AS8585',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'ME',
    metro: 'tgd',
    city: 'Podgorica',
    state: '',
    latitude: 42.1078,
    longitude: 18.7616,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
