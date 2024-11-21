local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'sea10',
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
    },
  },
  network+: {
    ipv4+: {
      prefix: '50.54.253.128/26',
    },
    ipv6+: {
      prefix: '2600:a800:1000::/64',
    },
  },
  transit+: {
    provider: 'Wholesail networks LLC',
    uplink: '40g',
    asn: 'AS20055',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'sea',
    city: 'Seattle',
    state: 'WA',
    latitude: 47.449,
    longitude: -122.309,
  },
  switch+: {
    model: 'qfx5100-24q',
  },
  lifecycle+: {
    created: '2024-04-22',
  },
}
