local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'bom02',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '14.143.58.128/26',
    },
    ipv6+: {
      prefix: '2403:0:100:66::/64',
    },
  },
  transit+: {
    provider: 'TATA Communications formerly VSNL is Leading ISP',
    uplink: '10g',
    asn: 'AS4755',
  },
  switch+: {
    flow_control: 'no',
  },
  location+: {
    continent_code: 'AS',
    country_code: 'IN',
    metro: 'bom',
    city: 'Mumbai',
    state: '',
    latitude: 19.0886,
    longitude: 72.8681,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
