local sites = {
  // Physical sites.
  akl01: import 'sites/akl01.jsonnet',
  ams04: import 'sites/ams04.jsonnet',
  ams05: import 'sites/ams05.jsonnet',
  ams11: import 'sites/ams11.jsonnet',
  arn02: import 'sites/arn02.jsonnet',
  arn03: import 'sites/arn03.jsonnet',
  arn04: import 'sites/arn04.jsonnet',
  ath03: import 'sites/ath03.jsonnet',
  atl02: import 'sites/atl02.jsonnet',
  atl04: import 'sites/atl04.jsonnet',
  bcn01: import 'sites/bcn01.jsonnet',
  beg01: import 'sites/beg01.jsonnet',
  ber02: import 'sites/ber02.jsonnet',
  bog02: import 'sites/bog02.jsonnet',
  bog03: import 'sites/bog03.jsonnet',
  bog04: import 'sites/bog04.jsonnet',
  bog05: import 'sites/bog05.jsonnet',
  bom01: import 'sites/bom01.jsonnet',
  bom02: import 'sites/bom02.jsonnet',
  bom04: import 'sites/bom04.jsonnet',
  bom05: import 'sites/bom05.jsonnet',
  bom06: import 'sites/bom06.jsonnet',
  bru01: import 'sites/bru01.jsonnet',
  bru02: import 'sites/bru02.jsonnet',
  bru04: import 'sites/bru04.jsonnet',
  bru07: import 'sites/bru07.jsonnet',
  cgk02: import 'sites/cgk02.jsonnet',
  chs02: import 'sites/chs02.jsonnet',
  cmh02: import 'sites/cmh02.jsonnet',
  cpt01: import 'sites/cpt01.jsonnet',
  del02: import 'sites/del02.jsonnet',
  del04: import 'sites/del04.jsonnet',
  del05: import 'sites/del05.jsonnet',
  den02: import 'sites/den02.jsonnet',
  den04: import 'sites/den04.jsonnet',
  den05: import 'sites/den05.jsonnet',
  dfw02: import 'sites/dfw02.jsonnet',
  dfw03: import 'sites/dfw03.jsonnet',
  dfw08: import 'sites/dfw08.jsonnet',
  dfw12: import 'sites/dfw12.jsonnet',
  dfw13: import 'sites/dfw13.jsonnet',
  doh02: import 'sites/doh02.jsonnet',
  dub01: import 'sites/dub01.jsonnet',
  eze01: import 'sites/eze01.jsonnet',
  eze04: import 'sites/eze04.jsonnet',
  fln01: import 'sites/fln01.jsonnet',
  fra03: import 'sites/fra03.jsonnet',
  fra04: import 'sites/fra04.jsonnet',
  fra08: import 'sites/fra08.jsonnet',
  geg01: import 'sites/geg01.jsonnet',
  gru02: import 'sites/gru02.jsonnet',
  gru03: import 'sites/gru03.jsonnet',
  gru06: import 'sites/gru06.jsonnet',
  ham02: import 'sites/ham02.jsonnet',
  hel02: import 'sites/hel02.jsonnet',
  hkg02: import 'sites/hkg02.jsonnet',
  hkg03: import 'sites/hkg03.jsonnet',
  hkg05: import 'sites/hkg05.jsonnet',
  hnd02: import 'sites/hnd02.jsonnet',
  hnd05: import 'sites/hnd05.jsonnet',
  hnd07: import 'sites/hnd07.jsonnet',
  hnl02: import 'sites/hnl02.jsonnet',
  iad02: import 'sites/iad02.jsonnet',
  iad03: import 'sites/iad03.jsonnet',
  iad04: import 'sites/iad04.jsonnet',
  iad08: import 'sites/iad08.jsonnet',
  iad09: import 'sites/iad09.jsonnet',
  icn02: import 'sites/icn02.jsonnet',
  jnb01: import 'sites/jnb01.jsonnet',
  jnb02: import 'sites/jnb02.jsonnet',
  kix02: import 'sites/kix02.jsonnet',
  las02: import 'sites/las02.jsonnet',
  lax04: import 'sites/lax04.jsonnet',
  lax06: import 'sites/lax06.jsonnet',
  lax08: import 'sites/lax08.jsonnet',
  lax10: import 'sites/lax10.jsonnet',
  lga04: import 'sites/lga04.jsonnet',
  lga05: import 'sites/lga05.jsonnet',
  lga06: import 'sites/lga06.jsonnet',
  lga08: import 'sites/lga08.jsonnet',
  lhr04: import 'sites/lhr04.jsonnet',
  lhr07: import 'sites/lhr07.jsonnet',
  lhr10: import 'sites/lhr10.jsonnet',
  lim01: import 'sites/lim01.jsonnet',
  lim02: import 'sites/lim02.jsonnet',
  lim03: import 'sites/lim03.jsonnet',
  lis01: import 'sites/lis01.jsonnet',
  lis02: import 'sites/lis02.jsonnet',
  lis03: import 'sites/lis03.jsonnet',
  lju01: import 'sites/lju01.jsonnet',
  los02: import 'sites/los02.jsonnet',
  maa01: import 'sites/maa01.jsonnet',
  maa02: import 'sites/maa02.jsonnet',
  maa03: import 'sites/maa03.jsonnet',
  mad04: import 'sites/mad04.jsonnet',
  mad06: import 'sites/mad06.jsonnet',
  mad08: import 'sites/mad08.jsonnet',
  mel02: import 'sites/mel02.jsonnet',
  mex01: import 'sites/mex01.jsonnet',
  mex03: import 'sites/mex03.jsonnet',
  mex04: import 'sites/mex04.jsonnet',
  mia02: import 'sites/mia02.jsonnet',
  mia04: import 'sites/mia04.jsonnet',
  mia05: import 'sites/mia05.jsonnet',
  mil05: import 'sites/mil05.jsonnet',
  mil06: import 'sites/mil06.jsonnet',
  mil07: import 'sites/mil07.jsonnet',
  mil09: import 'sites/mil09.jsonnet',
  mnl01: import 'sites/mnl01.jsonnet',
  mnl02: import 'sites/mnl02.jsonnet',
  mpm02: import 'sites/mpm02.jsonnet',
  mrs01: import 'sites/mrs01.jsonnet',
  mrs02: import 'sites/mrs02.jsonnet',
  mrs04: import 'sites/mrs04.jsonnet',
  mty01: import 'sites/mty01.jsonnet',
  nbo01: import 'sites/nbo01.jsonnet',
  nuq03: import 'sites/nuq03.jsonnet',
  nuq04: import 'sites/nuq04.jsonnet',
  nuq06: import 'sites/nuq06.jsonnet',
  nuq08: import 'sites/nuq08.jsonnet',
  oma02: import 'sites/oma02.jsonnet',
  ord02: import 'sites/ord02.jsonnet',
  ord03: import 'sites/ord03.jsonnet',
  ord06: import 'sites/ord06.jsonnet',
  par05: import 'sites/par05.jsonnet',
  par08: import 'sites/par08.jsonnet',
  par09: import 'sites/par09.jsonnet',
  pdx01: import 'sites/pdx01.jsonnet',
  pdx02: import 'sites/pdx02.jsonnet',
  pdx03: import 'sites/pdx03.jsonnet',
  per01: import 'sites/per01.jsonnet',
  per02: import 'sites/per02.jsonnet',
  prg03: import 'sites/prg03.jsonnet',
  prg04: import 'sites/prg04.jsonnet',
  prg05: import 'sites/prg05.jsonnet',
  scl01: import 'sites/scl01.jsonnet',
  scl03: import 'sites/scl03.jsonnet',
  scl06: import 'sites/scl06.jsonnet',
  sea03: import 'sites/sea03.jsonnet',
  sea04: import 'sites/sea04.jsonnet',
  sea08: import 'sites/sea08.jsonnet',
  sea10: import 'sites/sea10.jsonnet',
  sin01: import 'sites/sin01.jsonnet',
  sin03: import 'sites/sin03.jsonnet',
  slc02: import 'sites/slc02.jsonnet',
  sof01: import 'sites/sof01.jsonnet',
  sof02: import 'sites/sof02.jsonnet',
  svg01: import 'sites/svg01.jsonnet',
  syd03: import 'sites/syd03.jsonnet',
  syd05: import 'sites/syd05.jsonnet',
  syd08: import 'sites/syd08.jsonnet',
  tgd01: import 'sites/tgd01.jsonnet',
  tlv02: import 'sites/tlv02.jsonnet',
  tnr01: import 'sites/tnr01.jsonnet',
  tpe01: import 'sites/tpe01.jsonnet',
  tpe03: import 'sites/tpe03.jsonnet',
  trn02: import 'sites/trn02.jsonnet',
  trn04: import 'sites/trn04.jsonnet',
  tun01: import 'sites/tun01.jsonnet',
  waw02: import 'sites/waw02.jsonnet',
  wlg02: import 'sites/wlg02.jsonnet',
  yqm02: import 'sites/yqm02.jsonnet',
  yul03: import 'sites/yul03.jsonnet',
  yul06: import 'sites/yul06.jsonnet',
  yul08: import 'sites/yul08.jsonnet',
  yvr02: import 'sites/yvr02.jsonnet',
  yvr03: import 'sites/yvr03.jsonnet',
  yvr04: import 'sites/yvr04.jsonnet',
  ywg02: import 'sites/ywg02.jsonnet',
  yyc03: import 'sites/yyc03.jsonnet',
  yyz03: import 'sites/yyz03.jsonnet',
  yyz04: import 'sites/yyz04.jsonnet',
  yyz06: import 'sites/yyz06.jsonnet',
  yyz08: import 'sites/yyz08.jsonnet',
  zrh02: import 'sites/zrh02.jsonnet',

  // Test sites.
  chs0t: import 'sites/chs0t.jsonnet',
  lax0t: import 'sites/lax0t.jsonnet',
  lga0t: import 'sites/lga0t.jsonnet',
  lga1t: import 'sites/lga1t.jsonnet',
  pdx0t: import 'sites/pdx0t.jsonnet',
};
[
  local site = sites[name];
  if site.name == name then
    site
  else
    error 'Site name (%s) does not match object.name (%s)' % [name, site.name]
  for name in std.objectFields(sites)
]
