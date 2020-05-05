local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mex01',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '201.174.189.64/26',
    },
    ipv6+: {
      prefix: '2604:d600:1000:3::/64',
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
    latitude: 19.4361,
    longitude: -99.0719,
  },
  lifecycle+: {
    created: '2020-05-04',
  },
}
