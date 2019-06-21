local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'del01',
  annotations+: {
    type: 'physical',
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
    asn: 'AS38022',
  },
  location+: {
    continent_code: 'AS',
    country_code: 'IN',
    metro: 'del',
    city: 'New Delhi',
    state: '',
    latitude: 28.6448,
    longitude: 77.2167,
  },
  lifecycle+: {
    created: '2019-06-21',
  },
}
