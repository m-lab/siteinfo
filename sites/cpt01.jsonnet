local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'cpt01',
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
      prefix: '154.114.19.64/26',
    },
    ipv6+: {
      prefix: '2001:4200:0:e::/64',
    },
  },
  transit+: {
    provider: 'TENET (The UNINET Project)',
    uplink: '10g',
    asn: 'AS2018',
  },
  location+: {
    continent_code: 'AF',
    country_code: 'ZA',
    metro: 'cpt',
    city: 'Cape',
    state: 'Town',
    latitude: -33.9724,
    longitude: 18.6018,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
