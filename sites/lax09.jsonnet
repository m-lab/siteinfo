local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'lax09',
  annotations+: {
    provider: 'equinix',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '93.187.217.195/32',
        },
        ipv6+: {
          address: '2604:1380:4611:4400::1/128',
        },
      },
      project: 'mlab-oti',
    },
  },
  transit+: {
    provider: 'Packet Host, Inc.',
    uplink: '1g',
    asn: 'AS54825',
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
    created: '2023-07-05',
    retired: '2023-07-15',
  },
}
