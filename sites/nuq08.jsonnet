local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'nuq08',
  annotations+: {
    donated: true,
    type: 'physical',
  },
  machines: {
    mlab1: {
      disk: 'sda',
      iface: 'eth0',
      model: 'r630',
      project: 'mlab-oti',
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
    latitude: 37.3833,
    longitude: -122.0667,
  },
  lifecycle+: {
    created: '2024-02-29',
  },
}
