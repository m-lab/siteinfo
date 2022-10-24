local site = import 'lib/site_virtual.jsonnet';

site {
  name: error 'Must override site name',
  annotations: {
    provider: 'mlab',
    type: 'virtual',
  },
  loadbalancer: {
    roundrobin: true,
  },
  machines: {
    mlab1: {
      disk: 'pd-ssd',
      iface: 'ens4',
      model: 'n2-highcpu-4',
      network: {
        ipv4: {
          address: error 'Must override IPv4 address',
        },
        ipv6: {
          address: null,
        },
      },
      project: 'mlab-oti',
    },
  },
  transit: {
    provider: error 'Must override transit.provider',
    uplink: error 'Must override transit.uplink',
    asn: error 'Must override transit.asn',
    tier: 'PREMIUM',
  },
  location: {
    continent_code: error 'Must override location.continent_code',
    country_code: error 'Must override location.country_code',
    metro: error 'Must override location.metro',
    city: error 'Must override location.city',
    state: error 'Must override location.state',
    latitude: error 'Must override location.latitude',
    longitude: error 'Must override location.longitude',
  },
  lifecycle: {
    created: error 'Must override lifecycle.created',
    retired: null,
  },
}
