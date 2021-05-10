local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2017-03-28',
    retired: '2019-08-21',
  },
  location+: {
    city: 'Atlanta',
    continent_code: 'NA',
    country_code: 'US',
    latitude: 33.6367,
    longitude: -84.4281,
    metro: 'atl',
    state: '',
  },
  name: 'atl06',
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
      prefix: '70.42.177.64/26',
    },
    ipv6+: {
      prefix: '2600:c0b:2002:5::/64',
    },
  },
  transit+: {
    asn: 'AS14745',
    provider: 'Internap Holding LLC',
    uplink: '1g',
  },
}
