local sites = import 'sites.jsonnet';

{
  [site.name]: {
    auto_negotiation: site.switch.auto_negotiation,
    flow_control: site.switch.flow_control,
    rstp: site.switch.rstp,
    switch_make: site.switch.make,
    switch_model: site.switch.model,
    uplink_port: site.switch.uplink_port,
    uplink_speed: site.transit.uplink,
    ipv4_prefix: site.network.ipv4.prefix,
  }
  for site in sites
  if site.annotations.type == 'physical'
  if site.switch != null

}
