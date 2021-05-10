local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'svg01',
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
      prefix: '81.167.39.0/26',
    },
    ipv6+: {
      prefix: '2a01:798:0:13::/64',
    },
  },
  transit+: {
    provider: 'Altibox AS',
    uplink: '10g',
    asn: 'AS29695',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'NO',
    metro: 'svg',
    city: 'Stavanger',
    state: '',
    latitude: 58.8767,
    longitude: 5.6378,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
