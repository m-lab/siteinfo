local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'wlg02',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '163.7.129.64/26',
    },
    ipv6+: {
      prefix: '2404:138:4009:1::/64',
    },
  },
  transit+: {
    provider: 'REANNZ National Research and Education Network',
    uplink: '10g',
    asn: 'AS38022',
  },
  switch+: {
    flow_control: 'no',
  },
  location+: {
    continent_code: 'OC',
    country_code: 'NZ',
    metro: 'wlg',
    city: 'Wellington',
    state: '',
    latitude: -41.3272,
    longitude: 174.805,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
