local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'geg01',
  annotations+: {
    donated: true,
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
      project: 'mlab-sandbox'
    },
  },
  network+: {
    ipv4+: {
      prefix: '50.52.93.64/26',
    },
    ipv6+: {
      prefix: '2600:a804:800::/64',
    },
  },
  transit+: {
    provider: '"Wholesail networks LLC',
    uplink: '40g',
    asn: 'AS20055',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'geg',
    city: 'Spokane',
    state: 'WA',
    latitude: 47.6200,
    longitude: -117.5339,
  },
  switch+: {
    model: 'qfx5100-24q',
  },
  lifecycle+: {
    created: '2024-04-22',
  },
}
