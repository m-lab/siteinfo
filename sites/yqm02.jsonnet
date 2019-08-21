local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'yqm02',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '98.143.249.192/26',
    },
    ipv6+: {
      prefix: '2605:5080:1001:1::/64',
    },
  },
  transit+: {
    provider: 'F6 Newtorks Inc',
    uplink: '10g',
    asn: 'AS3367',
  },
  switch+: {
    auto_negotiation: 'yes',
    uplink_port: 'xe-0/0/45',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'CA',
    metro: 'yqm',
    city: 'Moncton',
    state: '',
    latitude: 46.1073,
    longitude: -64.6738,
  },
  lifecycle+: {
    created: '2019-08-21',
  },
}
