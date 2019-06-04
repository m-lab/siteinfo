local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'hnd01',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '203.178.130.192/26',
    },
    ipv6+: {
      prefix: '2001:200:0:b801::/64',
    },
  },
  transit+: {
    provider: 'WIDE Project',
    uplink: '1g',
    asn: 'AS2500',
  },
  switch+: {
    auto_negotiation: 'no',
    uplink_port: 'ge-0/0/23',
    model: 'ex4200',
  },
  location+: {
    continent_code: 'AS',
    country_code: 'JP',
    metro: 'hnd',
    city: 'Tokyo',
    state: '',
    latitude: 35.5522,
    longitude: 139.78,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
