local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mil06',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '162.213.96.64/26',
    },
    ipv6+: {
      prefix: '2001:41a8:28:3::/64',
    },
  },
  transit+: {
    provider: 'TELECOM ITALIA SPARKLE S.p.A.',
    uplink: '10g',
    asn: 'AS6762',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'IT',
    metro: 'mil',
    city: 'Milan',
    state: '',
    latitude: 45.464,
    longitude: 9.1916,
  },
  lifecycle+: {
    created: '2019-07-06',
  },
}
