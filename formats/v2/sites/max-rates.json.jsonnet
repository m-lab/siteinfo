local sites = import 'sites.jsonnet';

/*
The max-rate for the -txcontroller.max-rate flag for ndt-server for 1Gbit/s
sites is set to 150Mbit/s, which should mean that the combined throughput for a
a site should not exceed 450Mbit/s, notwithstanding already running tests which
may significantly exceed this number.
*/
local MaxRate1g = 150000000;

/*
The max-rate for the -txcontroller.max-rate flag for ndt-server for 10Gbit/s
sites is set to 2.5Gbit/s, which should mean that the combined throughput for a
a site should not exceed 7.5Gbit/s, notwithstanding already running tests which
may significantly exceed this number.
*/
local MaxRate10g = 2500000000;

{
  [site.name]: if site.transit.uplink == '1g' then MaxRate1g else MaxRate10g
  for site in sites
}

