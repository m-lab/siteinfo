local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  annotations+: {
    type: 'physical',
  },
  lifecycle+: {
    created: '2017-03-27',
    retired: '2019-09-10',
  },
  location+: {
    city: 'San Francisco',
    continent_code: 'NA',
    country_code: 'US',
    latitude: 37.3833,
    longitude: -122.0667,
    metro: 'sjc',
    state: '',
  },
  name: 'sjc01',
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
      prefix: '70.42.244.64/26',
    },
    ipv6+: {
      prefix: '2600:c02:2:82::/64',
    },
  },
  transit+: {
    asn: 'AS12182',
    provider: 'Internap Holding LLC',
    uplink: '1g',
  },
}
