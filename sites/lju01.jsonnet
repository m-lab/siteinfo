local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lju01',
  annotations+: {
    donated: true,
    probability: 0.5,
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
      prefix: '91.239.96.64/26',
    },
    ipv6+: {
      prefix: '2001:67c:27e4:100::/64',
    },
  },
  transit+: {
    provider: 'Zavod za IPv6 - go6',
    uplink: '1g',
    asn: 'AS198644',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'SI',
    metro: 'lju',
    city: 'Ljubljana',
    state: '',
    latitude: 46.2237,
    longitude: 14.4576,
  },
  lifecycle+: {
    created: '2019-01-01',
    retired: '2025-02-12',
  },
}
