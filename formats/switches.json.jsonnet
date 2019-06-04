local sites = import 'sites.jsonnet';

{
  [site.name]: {
    auto_negotiation: site.switch.auto_negotiation,
    flow_control: site.switch.flow_control,
    switch_make: site.switch.make,
    uplink_port: site.switch.uplink_port,
    uplink_speed: site.transit.uplink,
  },
  for site in sites
  if site.annotations.type == 'physical'
}
