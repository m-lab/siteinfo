local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'pdx02',
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
      prefix: '50.45.227.64/26',
    },
    ipv6+: {
      prefix: '2600:a80a:800::/64',
    },
  },
  transit+: {
    provider: 'Wholesail networks LLC',
    uplink: '10g',
    asn: 'AS20055',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'pdx',
    city: 'Portland',
    state: 'OR',
    latitude: 45.5886,
    longitude: -122.5975,
  },
  lifecycle+: {
    created: '2024-04-22',
  },
}

