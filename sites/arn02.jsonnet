local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'arn02',
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
      prefix: '195.89.146.192/26',
    },
    ipv6+: {
      prefix: '2001:5012:100:24::/64',
    },
  },
  transit+: {
    provider: 'Vodafone Group PLC',
    uplink: '10g',
    asn: 'AS1273',
  },
  location+: {
    continent_code: 'EU',
    country_code: 'SE',
    metro: 'arn',
    city: 'Stockholm',
    state: '',
    latitude: 59.6519,
    longitude: 17.9186,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
