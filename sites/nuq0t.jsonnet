local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'nuq0t',
  annotations+: {
    type: 'physical',
  },
  machines: {
    mlab1: {
      disk: 'sda',
      iface: 'eth0',
      model: 'r630',
      project: 'mlab-sandbox',
    },
  },
  network+: {
    ipv4+: {
      prefix: '192.158.252.176/28',
    },
    ipv6+: {
      prefix: '2001:4f8:ffff:3::/64',
    },
  },
  switch: null,
  transit+: {
    provider: 'Internet Systems Consortium, Inc.',
    uplink: '10g',
    asn: 'AS1280',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'nuq',
    city: 'San Francisco Bay Area',
    state: 'CA',
    latitude: 37.4161,
    longitude: -122.049,
  },
  lifecycle+: {
    created: '2023-11-29',
    retired: '2024-02-29',
  },
}
