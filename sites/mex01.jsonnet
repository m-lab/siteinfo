local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mex01',
  annotations+: {
    donated: true,
    type: 'physical',
  },
  machines+: {
    mlab1+: {
      model: 'r640',
    },
    mlab2+: {
      model: 'r640',
    },
    mlab3+: {
      model: 'r640',
    },
    mlab4+: {
      model: 'r640',
    },
  },
  network+: {
    ipv4+: {
      prefix: '201.174.189.64/26',
    },
    ipv6+: {
      prefix: '2604:d600:1001:1::/64',
    },
  },
  transit+: {
    provider: 'Transtelco Inc',
    uplink: '10g',
    asn: 'AS32098',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'MX',
    metro: 'mex',
    city: 'Mexico City',
    state: '',
    latitude: 19.4363,
    longitude: -99.0721,
  },
  lifecycle+: {
    created: '2020-05-04',
  },
}
