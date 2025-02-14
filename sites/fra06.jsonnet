local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'fra06',
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
      prefix: '162.213.97.192/26',
    },
    ipv6+: {
      prefix: '2001:41a8:604:2::/64',
    },
  },
  transit+: {
    provider: 'TELECOM ITALIA SPARKLE S.p.A.',
    uplink: '10g',
    asn: 'AS6762',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'DE',
    metro: 'fra',
    city: 'Frankfurt',
    state: '',
    latitude: 50.0333,
    longitude: 8.57056,
  },
  lifecycle+: {
    created: '2020-11-12',
    retired: '2024-02-01',
  },
}
