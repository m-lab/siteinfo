local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'mty01',
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
      prefix: '201.174.163.192/26',
    },
    ipv6+: {
      prefix: '2604:d600:c06:4::/64',
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
    metro: 'mty',
    city: 'Monterrey',
    state: '',
    latitude: 25.7785,
    longitude: -100.107,
  },
  lifecycle+: {
    created: '2020-05-04',
  },
}
