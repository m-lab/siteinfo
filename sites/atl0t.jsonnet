local sitesDefault = import 'sites/_default_virtual.jsonnet';

sitesDefault {
  name: 'atl0t',
  annotations+: {
    type: 'virtual',
    provider: 'equinix',
  },
  machines+: {
    mlab1+: {
      disk: 'pd-standard',
      network+: {
        ipv4+: {
          address: '86.109.8.75/32',
        },
        ipv6: {
          address: '2604:1380:ffd1:2400::1/128',
        },
      },
      project: 'mlab-sandbox',
    },
  },
  transit+: {
    provider: 'Packet Host, Inc',
    uplink: '10g',
    asn: 'AS54825',
  },
  location+: {
    continent_code: 'NA',
    country_code: 'US',
    metro: 'atl',
    city: 'Atlanta',
    state: 'GA',
    latitude: 33.6367,
    longitude: -84.4281,
  },
  lifecycle+: {
    created: '2023-06-30',
    retired: '2023-08-08',
  },
}
