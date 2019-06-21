local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'maa01',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '121.242.229.64/26',
    },
    ipv6+: {
      prefix: '2403:0:200:3c::/64',
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
    metro: 'maa',
    city: 'Chennai',
    state: '',
    latitude: 13.0674,
    longitude: 80.2376,
  },
  lifecycle+: {
    created: '2019-06-21',
  },
}
