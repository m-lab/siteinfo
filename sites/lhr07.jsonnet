local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lhr07',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '162.213.96.0/26',
    },
    ipv6+: {
      prefix: '2001:41a8:405:1::/64',
    },
  },
  transit+: {
    provider: 'TELECOM ITALIA SPARKLE S.p.A.',
    uplink: '10g',
    asn: null,
  },
  location+: {
    continent_code: 'EU',
    country_code: 'GB',
    metro: 'lhr',
    city: 'London',
    state: '',
    latitude: 51.4697,
    longitude: -0.4514,
  },
  lifecycle+: {
    created: '2019-11-15',
  },
}
