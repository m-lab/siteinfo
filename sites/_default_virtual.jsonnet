local site = import 'lib/site_virtual.jsonnet';

site {
  name: error 'Must override site name',
  annotations: {
    // Currently, we only support a single experiment on cloud machines (ndt).
    // Setting this to 12 just gives the code a chance to add more than one, if
    // we ever set any other experiment(s) to be "cloud_enabled=true".
    experiment_count: 12,
    probability: 1.0,
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
