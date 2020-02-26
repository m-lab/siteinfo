local sites = {
  // Physical sites.
  akl01: import 'sites/akl01.jsonnet',
  ams03: import 'sites/ams03.jsonnet',
  ams04: import 'sites/ams04.jsonnet',
  ams05: import 'sites/ams05.jsonnet',
  ams08: import 'sites/ams08.jsonnet',
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
  bom01: import 'sites/bom01.jsonnet',
  bom02: import 'sites/bom02.jsonnet',
  bru01: import 'sites/bru01.jsonnet',
  bru02: import 'sites/bru02.jsonnet',
  bru03: import 'sites/bru03.jsonnet',
  bru04: import 'sites/bru04.jsonnet',
  cpt01: import 'sites/cpt01.jsonnet',
  del01: import 'sites/del01.jsonnet',
  del02: import 'sites/del02.jsonnet',
  den02: import 'sites/den02.jsonnet',
  den04: import 'sites/den04.jsonnet',
  den05: import 'sites/den05.jsonnet',
  den06: import 'sites/den06.jsonnet',
  dfw02: import 'sites/dfw02.jsonnet',
  dfw03: import 'sites/dfw03.jsonnet',
  dfw05: import 'sites/dfw05.jsonnet',
  dfw07: import 'sites/dfw07.jsonnet',
  dfw08: import 'sites/dfw08.jsonnet',
  dub01: import 'sites/dub01.jsonnet',
  fln01: import 'sites/fln01.jsonnet',
  fra01: import 'sites/fra01.jsonnet',
  fra02: import 'sites/fra02.jsonnet',
  fra03: import 'sites/fra03.jsonnet',
  fra04: import 'sites/fra04.jsonnet',
  fra05: import 'sites/fra05.jsonnet',
  gig01: import 'sites/gig01.jsonnet',
  gru01: import 'sites/gru01.jsonnet',
  gru02: import 'sites/gru02.jsonnet',
  gru03: import 'sites/gru03.jsonnet',
  gru04: import 'sites/gru04.jsonnet',
  ham02: import 'sites/ham02.jsonnet',
  hkg01: import 'sites/hkg01.jsonnet',
  hkg02: import 'sites/hkg02.jsonnet',
  hnd01: import 'sites/hnd01.jsonnet',
  hnd02: import 'sites/hnd02.jsonnet',
  hnd03: import 'sites/hnd03.jsonnet',
  hnd04: import 'sites/hnd04.jsonnet',
  iad02: import 'sites/iad02.jsonnet',
  iad03: import 'sites/iad03.jsonnet',
  iad04: import 'sites/iad04.jsonnet',
  iad05: import 'sites/iad05.jsonnet',
  iad06: import 'sites/iad06.jsonnet',
  jnb01: import 'sites/jnb01.jsonnet',
  lax02: import 'sites/lax02.jsonnet',
  lax03: import 'sites/lax03.jsonnet',
  lax04: import 'sites/lax04.jsonnet',
  lax05: import 'sites/lax05.jsonnet',
  lax06: import 'sites/lax06.jsonnet',
  lga03: import 'sites/lga03.jsonnet',
  lga04: import 'sites/lga04.jsonnet',
  lga05: import 'sites/lga05.jsonnet',
  lga06: import 'sites/lga06.jsonnet',
  lga08: import 'sites/lga08.jsonnet',
  lhr02: import 'sites/lhr02.jsonnet',
  lhr03: import 'sites/lhr03.jsonnet',
  lhr04: import 'sites/lhr04.jsonnet',
  lhr05: import 'sites/lhr05.jsonnet',
  lhr06: import 'sites/lhr06.jsonnet',
  lhr07: import 'sites/lhr07.jsonnet',
  lis01: import 'sites/lis01.jsonnet',
  lis02: import 'sites/lis02.jsonnet',
  lju01: import 'sites/lju01.jsonnet',
  maa01: import 'sites/maa01.jsonnet',
  maa02: import 'sites/maa02.jsonnet',
  mad02: import 'sites/mad02.jsonnet',
  mad03: import 'sites/mad03.jsonnet',
  mad04: import 'sites/mad04.jsonnet',
  mad05: import 'sites/mad05.jsonnet',
  mia02: import 'sites/mia02.jsonnet',
  mia03: import 'sites/mia03.jsonnet',
  mia04: import 'sites/mia04.jsonnet',
  mia05: import 'sites/mia05.jsonnet',
  mia06: import 'sites/mia06.jsonnet',
  mil02: import 'sites/mil02.jsonnet',
  mil03: import 'sites/mil03.jsonnet',
  mil04: import 'sites/mil04.jsonnet',
  mil05: import 'sites/mil05.jsonnet',
  mnl01: import 'sites/mnl01.jsonnet',
  mrs01: import 'sites/mrs01.jsonnet',
  mrs02: import 'sites/mrs02.jsonnet',
  nbo01: import 'sites/nbo01.jsonnet',
  nuq02: import 'sites/nuq02.jsonnet',
  nuq03: import 'sites/nuq03.jsonnet',
  nuq04: import 'sites/nuq04.jsonnet',
  nuq06: import 'sites/nuq06.jsonnet',
  nuq07: import 'sites/nuq07.jsonnet',
  ord02: import 'sites/ord02.jsonnet',
  ord03: import 'sites/ord03.jsonnet',
  ord04: import 'sites/ord04.jsonnet',
  ord05: import 'sites/ord05.jsonnet',
  ord06: import 'sites/ord06.jsonnet',
  par02: import 'sites/par02.jsonnet',
  par03: import 'sites/par03.jsonnet',
  par04: import 'sites/par04.jsonnet',
  par05: import 'sites/par05.jsonnet',
  prg02: import 'sites/prg02.jsonnet',
  prg03: import 'sites/prg03.jsonnet',
  prg04: import 'sites/prg04.jsonnet',
  prg05: import 'sites/prg05.jsonnet',
  sea02: import 'sites/sea02.jsonnet',
  sea03: import 'sites/sea03.jsonnet',
  sea04: import 'sites/sea04.jsonnet',
  sea07: import 'sites/sea07.jsonnet',
  sea08: import 'sites/sea08.jsonnet',
  sin01: import 'sites/sin01.jsonnet',
  svg01: import 'sites/svg01.jsonnet',
  syd02: import 'sites/syd02.jsonnet',
  syd03: import 'sites/syd03.jsonnet',
  tgd01: import 'sites/tgd01.jsonnet',
  tnr01: import 'sites/tnr01.jsonnet',
  tpe01: import 'sites/tpe01.jsonnet',
  trn02: import 'sites/trn02.jsonnet',
  tun01: import 'sites/tun01.jsonnet',
  vie01: import 'sites/vie01.jsonnet',
  wlg02: import 'sites/wlg02.jsonnet',
  yqm01: import 'sites/yqm01.jsonnet',
  yul02: import 'sites/yul02.jsonnet',
  yvr01: import 'sites/yvr01.jsonnet',
  ywg01: import 'sites/ywg01.jsonnet',
  yyc02: import 'sites/yyc02.jsonnet',
  yyz02: import 'sites/yyz02.jsonnet',

  // Test sites.
  lga0t: import 'sites/lga0t.jsonnet',
  lga1t: import 'sites/lga1t.jsonnet',
};
[
  local site = sites[name];
  if site.name == name then
    site
  else
    error 'Site name (%s) does not match object.name (%s)' % [name, site.name]
  for name in std.objectFields(sites)
]
