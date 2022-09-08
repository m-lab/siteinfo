local sites = {
  // Physical sites.
  akl01: import 'sites/akl01.jsonnet',
  ams03: import 'sites/ams03.jsonnet',
  ams04: import 'sites/ams04.jsonnet',
  ams05: import 'sites/ams05.jsonnet',
  ams08: import 'sites/ams08.jsonnet',
  ams09: import 'sites/ams09.jsonnet',
  ams10: import 'sites/ams10.jsonnet',
  arn02: import 'sites/arn02.jsonnet',
  arn03: import 'sites/arn03.jsonnet',
  arn04: import 'sites/arn04.jsonnet',
  arn05: import 'sites/arn05.jsonnet',
  arn06: import 'sites/arn06.jsonnet',
  ath03: import 'sites/ath03.jsonnet',
  atl02: import 'sites/atl02.jsonnet',
  atl03: import 'sites/atl03.jsonnet',
  atl04: import 'sites/atl04.jsonnet',
  atl07: import 'sites/atl07.jsonnet',
  atl08: import 'sites/atl08.jsonnet',
  bcn01: import 'sites/bcn01.jsonnet',
  beg01: import 'sites/beg01.jsonnet',
  bog02: import 'sites/bog02.jsonnet',
  bog03: import 'sites/bog03.jsonnet',
  bog04: import 'sites/bog04.jsonnet',
  bog05: import 'sites/bog05.jsonnet',
  bom01: import 'sites/bom01.jsonnet',
  bom02: import 'sites/bom02.jsonnet',
  bru01: import 'sites/bru01.jsonnet',
  bru02: import 'sites/bru02.jsonnet',
  bru03: import 'sites/bru03.jsonnet',
  bru04: import 'sites/bru04.jsonnet',
  bru05: import 'sites/bru05.jsonnet',
  bru06: import 'sites/bru06.jsonnet',
  cgk01: import 'sites/cgk01.jsonnet',
  chs01: import 'sites/chs01.jsonnet',
  cmh01: import 'sites/cmh01.jsonnet',
  cpt01: import 'sites/cpt01.jsonnet',
  del01: import 'sites/del01.jsonnet',
  del02: import 'sites/del02.jsonnet',
  del03: import 'sites/del03.jsonnet',
  den02: import 'sites/den02.jsonnet',
  den04: import 'sites/den04.jsonnet',
  den05: import 'sites/den05.jsonnet',
  den06: import 'sites/den06.jsonnet',
  dfw02: import 'sites/dfw02.jsonnet',
  dfw03: import 'sites/dfw03.jsonnet',
  dfw05: import 'sites/dfw05.jsonnet',
  dfw07: import 'sites/dfw07.jsonnet',
  dfw08: import 'sites/dfw08.jsonnet',
  dfw09: import 'sites/dfw09.jsonnet',
  dub01: import 'sites/dub01.jsonnet',
  eze01: import 'sites/eze01.jsonnet',
  eze02: import 'sites/eze02.jsonnet',
  eze03: import 'sites/eze03.jsonnet',
  eze04: import 'sites/eze04.jsonnet',
  fln01: import 'sites/fln01.jsonnet',
  fra01: import 'sites/fra01.jsonnet',
  fra02: import 'sites/fra02.jsonnet',
  fra03: import 'sites/fra03.jsonnet',
  fra04: import 'sites/fra04.jsonnet',
  fra05: import 'sites/fra05.jsonnet',
  fra06: import 'sites/fra06.jsonnet',
  fra07: import 'sites/fra07.jsonnet',
  gig01: import 'sites/gig01.jsonnet',
  gig02: import 'sites/gig02.jsonnet',
  gig03: import 'sites/gig03.jsonnet',
  gig04: import 'sites/gig04.jsonnet',
  gru01: import 'sites/gru01.jsonnet',
  gru02: import 'sites/gru02.jsonnet',
  gru03: import 'sites/gru03.jsonnet',
  gru04: import 'sites/gru04.jsonnet',
  ham02: import 'sites/ham02.jsonnet',
  hel01: import 'sites/hel01.jsonnet',
  hkg01: import 'sites/hkg01.jsonnet',
  hkg02: import 'sites/hkg02.jsonnet',
  hkg03: import 'sites/hkg03.jsonnet',
  hnd02: import 'sites/hnd02.jsonnet',
  hnd03: import 'sites/hnd03.jsonnet',
  hnd04: import 'sites/hnd04.jsonnet',
  hnd05: import 'sites/hnd05.jsonnet',
  hnl01: import 'sites/hnl01.jsonnet',
  iad02: import 'sites/iad02.jsonnet',
  iad03: import 'sites/iad03.jsonnet',
  iad04: import 'sites/iad04.jsonnet',
  iad05: import 'sites/iad05.jsonnet',
  iad06: import 'sites/iad06.jsonnet',
  iad07: import 'sites/iad07.jsonnet',
  iad08: import 'sites/iad08.jsonnet',
  jnb01: import 'sites/jnb01.jsonnet',
  lax02: import 'sites/lax02.jsonnet',
  lax03: import 'sites/lax03.jsonnet',
  lax04: import 'sites/lax04.jsonnet',
  lax05: import 'sites/lax05.jsonnet',
  lax06: import 'sites/lax06.jsonnet',
  lax07: import 'sites/lax07.jsonnet',
  lax08: import 'sites/lax08.jsonnet',
  lga04: import 'sites/lga04.jsonnet',
  lga05: import 'sites/lga05.jsonnet',
  lga06: import 'sites/lga06.jsonnet',
  lga08: import 'sites/lga08.jsonnet',
  lga09: import 'sites/lga09.jsonnet',
  lhr02: import 'sites/lhr02.jsonnet',
  lhr03: import 'sites/lhr03.jsonnet',
  lhr04: import 'sites/lhr04.jsonnet',
  lhr05: import 'sites/lhr05.jsonnet',
  lhr07: import 'sites/lhr07.jsonnet',
  lhr08: import 'sites/lhr08.jsonnet',
  lhr09: import 'sites/lhr09.jsonnet',
  lim01: import 'sites/lim01.jsonnet',
  lim02: import 'sites/lim02.jsonnet',
  lim03: import 'sites/lim03.jsonnet',
  lim04: import 'sites/lim04.jsonnet',
  lis01: import 'sites/lis01.jsonnet',
  lis02: import 'sites/lis02.jsonnet',
  lis03: import 'sites/lis03.jsonnet',
  lju01: import 'sites/lju01.jsonnet',
  los02: import 'sites/los02.jsonnet',
  maa01: import 'sites/maa01.jsonnet',
  maa02: import 'sites/maa02.jsonnet',
  mad02: import 'sites/mad02.jsonnet',
  mad03: import 'sites/mad03.jsonnet',
  mad04: import 'sites/mad04.jsonnet',
  mad06: import 'sites/mad06.jsonnet',
  mex01: import 'sites/mex01.jsonnet',
  mex02: import 'sites/mex02.jsonnet',
  mex03: import 'sites/mex03.jsonnet',
  mex04: import 'sites/mex04.jsonnet',
  mia02: import 'sites/mia02.jsonnet',
  mia03: import 'sites/mia03.jsonnet',
  mia04: import 'sites/mia04.jsonnet',
  mia05: import 'sites/mia05.jsonnet',
  mia06: import 'sites/mia06.jsonnet',
  mil02: import 'sites/mil02.jsonnet',
  mil03: import 'sites/mil03.jsonnet',
  mil04: import 'sites/mil04.jsonnet',
  mil05: import 'sites/mil05.jsonnet',
  mil06: import 'sites/mil06.jsonnet',
  mil07: import 'sites/mil07.jsonnet',
  mnl01: import 'sites/mnl01.jsonnet',
  mnl02: import 'sites/mnl02.jsonnet',
  mpm02: import 'sites/mpm02.jsonnet',
  mrs01: import 'sites/mrs01.jsonnet',
  mrs02: import 'sites/mrs02.jsonnet',
  mrs03: import 'sites/mrs03.jsonnet',
  mrs04: import 'sites/mrs04.jsonnet',
  mty01: import 'sites/mty01.jsonnet',
  nbo01: import 'sites/nbo01.jsonnet',
  nuq02: import 'sites/nuq02.jsonnet',
  nuq03: import 'sites/nuq03.jsonnet',
  nuq04: import 'sites/nuq04.jsonnet',
  nuq06: import 'sites/nuq06.jsonnet',
  nuq07: import 'sites/nuq07.jsonnet',
  oma01: import 'sites/oma01.jsonnet',
  ord02: import 'sites/ord02.jsonnet',
  ord03: import 'sites/ord03.jsonnet',
  ord04: import 'sites/ord04.jsonnet',
  ord05: import 'sites/ord05.jsonnet',
  ord06: import 'sites/ord06.jsonnet',
  ord07: import 'sites/ord07.jsonnet',
  par02: import 'sites/par02.jsonnet',
  par03: import 'sites/par03.jsonnet',
  par04: import 'sites/par04.jsonnet',
  par05: import 'sites/par05.jsonnet',
  par06: import 'sites/par06.jsonnet',
  par07: import 'sites/par07.jsonnet',
  per01: import 'sites/per01.jsonnet',
  per02: import 'sites/per02.jsonnet',
  prg02: import 'sites/prg02.jsonnet',
  prg03: import 'sites/prg03.jsonnet',
  prg04: import 'sites/prg04.jsonnet',
  prg05: import 'sites/prg05.jsonnet',
  prg06: import 'sites/prg06.jsonnet',
  scl01: import 'sites/scl01.jsonnet',
  scl02: import 'sites/scl02.jsonnet',
  scl03: import 'sites/scl03.jsonnet',
  scl04: import 'sites/scl04.jsonnet',
  sea02: import 'sites/sea02.jsonnet',
  sea03: import 'sites/sea03.jsonnet',
  sea04: import 'sites/sea04.jsonnet',
  sea07: import 'sites/sea07.jsonnet',
  sea08: import 'sites/sea08.jsonnet',
  sea09: import 'sites/sea09.jsonnet',
  sin01: import 'sites/sin01.jsonnet',
  sin02: import 'sites/sin02.jsonnet',
  sof01: import 'sites/sof01.jsonnet',
  sof02: import 'sites/sof02.jsonnet',
  svg01: import 'sites/svg01.jsonnet',
  syd03: import 'sites/syd03.jsonnet',
  syd04: import 'sites/syd04.jsonnet',
  syd05: import 'sites/syd05.jsonnet',
  syd06: import 'sites/syd06.jsonnet',
  tgd01: import 'sites/tgd01.jsonnet',
  tnr01: import 'sites/tnr01.jsonnet',
  tpe01: import 'sites/tpe01.jsonnet',
  tpe02: import 'sites/tpe02.jsonnet',
  trn02: import 'sites/trn02.jsonnet',
  tun01: import 'sites/tun01.jsonnet',
  wlg02: import 'sites/wlg02.jsonnet',
  yqm01: import 'sites/yqm01.jsonnet',
  yul02: import 'sites/yul02.jsonnet',
  yul03: import 'sites/yul03.jsonnet',
  yul04: import 'sites/yul04.jsonnet',
  yul05: import 'sites/yul05.jsonnet',
  yul06: import 'sites/yul06.jsonnet',
  yvr01: import 'sites/yvr01.jsonnet',
  yvr02: import 'sites/yvr02.jsonnet',
  yvr03: import 'sites/yvr03.jsonnet',
  yvr04: import 'sites/yvr04.jsonnet',
  ywg01: import 'sites/ywg01.jsonnet',
  yyc02: import 'sites/yyc02.jsonnet',
  yyz03: import 'sites/yyz03.jsonnet',
  yyz04: import 'sites/yyz04.jsonnet',
  yyz05: import 'sites/yyz05.jsonnet',
  yyz06: import 'sites/yyz06.jsonnet',

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
