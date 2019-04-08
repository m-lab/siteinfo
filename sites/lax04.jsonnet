local sitesDefault = import 'sites/_default.jsonnet';

sitesDefault {
  name: 'lax04',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: {
      prefix: '4.15.166.0/26',
    },
    ipv6+: {
      prefix: '2001:1900:2100:15::/64',
    },
  },
  transit+: {
    provider: 'Level 3 Parent, LLC',
    uplink: '1g',
    asn: 'AS3356',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'lax',
    city: 'Los Angeles',
    state: 'CA',
    latitude: 33.9425,
    longitude: -118.4072,
  },
  lifecycle+: {
    created: '2019-01-01',
  },
}
