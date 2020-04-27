local site = import 'lib/site.jsonnet';

site {
  name: error 'Must override site name',
  annotations: {
    type: error 'Must override annotations.type, e.g. physical, cloud',
  },
  loadbalancer: {
    roundrobin: true,
  },
  machines: {
    mlab1: {
      disk: 'sda',
      iface: 'eth0',
      model: 'r630',
      project: 'mlab-oti',
    },
    mlab2: {
      disk: 'sda',
      iface: 'eth0',
      model: 'r630',
      project: 'mlab-oti',
    },
    mlab3: {
      disk: 'sda',
      iface: 'eth0',
      model: 'r630',
      project: 'mlab-oti',
    },
    mlab4: {
      disk: 'sda',
      iface: 'eth0',
      model: 'r630',
      project: 'mlab-staging',
    },
  },
  network: {
    ipv4: {
      prefix: error 'Must override network.ipv4.prefix',
      dns1: '8.8.8.8',
      dns2: '8.8.4.4',
    },
    ipv6: {
      prefix: error 'Must override network.ipv6.prefix',
      dns1: '2001:4860:4860::8888',
      dns2: '2001:4860:4860::8844',
    },
  },
  transit: {
    provider: error 'Must override transit.provider',
    uplink: error 'Must override transit.uplink',
    asn: error 'Must override transit.asn',
  },
  switch: {
    auto_negotiation: 'yes',
    flow_control: 'no',
    make: 'juniper',
    model: 'qfx5100',
    rstp: 'yes',
    uplink_port: (
      if $.transit.uplink == '10g' then
        'xe-0/0/45'
      else if $.transit.uplink == '1g' then
        'ge-0/0/47'
      else
        error 'Unknown uplink speed! %s' % $.transit.uplink
    ),
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
