local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'tun01',
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
      prefix: '41.231.21.0/26',
    },
    ipv6+: {
      prefix: '2001:4350:3000:1::/64',
    },
  },
  transit+: {
    provider: 'Tunisia BackBone AS',
    uplink: '1g',
    asn: 'AS2609',
  },
  location+: {
    continent_code: 'AF',
    country_code: 'TN',
    metro: 'tun',
    city: 'Tunis',
    state: '',
    latitude: 36.8511,
    longitude: 10.2272,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
