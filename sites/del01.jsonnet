local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'del01',
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
      prefix: '115.113.240.192/26',
    },
    ipv6+: {
      prefix: '2403:0:400:56::/64',
    },
  },
  transit+: {
    provider: 'TATA Communications formerly VSNL is Leading ISP',
    uplink: '10g',
    asn: 'AS4755',
  },
  location+: {
    continent_code: 'AS',
    country_code: 'IN',
    metro: 'del',
    city: 'New Delhi',
    state: '',
    latitude: 21.0686228,
    longitude: 82.7525294,
  },
  lifecycle+: {
    created: '2019-06-21',
  },
}
