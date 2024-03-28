local retiredSites = {
  acc01: import 'sites/acc01.jsonnet',
  acc02: import 'sites/acc02.jsonnet',
  ams01: import 'sites/ams01.jsonnet',
  ams02: import 'sites/ams02.jsonnet',
  ams03: import 'sites/ams03.jsonnet',
  ams06: import 'sites/ams06.jsonnet',
  ams07: import 'sites/ams07.jsonnet',
  ams08: import 'sites/ams08.jsonnet',
  ams09: import 'sites/ams09.jsonnet',
  arn01: import 'sites/arn01.jsonnet',
  arn05: import 'sites/arn05.jsonnet',
  arn06: import 'sites/arn06.jsonnet',
  ath01: import 'sites/ath01.jsonnet',
  ath02: import 'sites/ath02.jsonnet',
  atl01: import 'sites/atl01.jsonnet',
  atl03: import 'sites/atl03.jsonnet',
  atl05: import 'sites/atl05.jsonnet',
  atl06: import 'sites/atl06.jsonnet',
  atl07: import 'sites/atl07.jsonnet',
  atl08: import 'sites/atl08.jsonnet',
  bkk01: import 'sites/bkk01.jsonnet',
  bog01: import 'sites/bog01.jsonnet',
  bru03: import 'sites/bru03.jsonnet',
  bru05: import 'sites/bru05.jsonnet',
  den01: import 'sites/den01.jsonnet',
  den03: import 'sites/den03.jsonnet',
  den06: import 'sites/den06.jsonnet',
  dfw01: import 'sites/dfw01.jsonnet',
  dfw04: import 'sites/dfw04.jsonnet',
  dfw05: import 'sites/dfw05.jsonnet',
  dfw06: import 'sites/dfw06.jsonnet',
  dfw07: import 'sites/dfw07.jsonnet',
  dfw10: import 'sites/dfw10.jsonnet',
  dfw11: import 'sites/dfw11.jsonnet',
  del03: import 'sites/del03.jsonnet',
  eze02: import 'sites/eze02.jsonnet',
  fra01: import 'sites/fra01.jsonnet',
  fra02: import 'sites/fra02.jsonnet',
  fra05: import 'sites/fra05.jsonnet',
  fra06: import 'sites/fra06.jsonnet',
  gig01: import 'sites/gig01.jsonnet',
  gig02: import 'sites/gig02.jsonnet',
  gig03: import 'sites/gig03.jsonnet',
  gig04: import 'sites/gig04.jsonnet',
  gru01: import 'sites/gru01.jsonnet',
  gru04: import 'sites/gru04.jsonnet',
  ham01: import 'sites/ham01.jsonnet',
  hkg01: import 'sites/hkg01.jsonnet',
  hnd01: import 'sites/hnd01.jsonnet',
  hnd03: import 'sites/hnd03.jsonnet',
  hnd04: import 'sites/hnd04.jsonnet',
  hnd06: import 'sites/hnd06.jsonnet',
  iad01: import 'sites/iad01.jsonnet',
  iad05: import 'sites/iad05.jsonnet',
  iad06: import 'sites/iad06.jsonnet',
  iad07: import 'sites/iad07.jsonnet',
  lax01: import 'sites/lax01.jsonnet',
  lax02: import 'sites/lax02.jsonnet',
  lax03: import 'sites/lax03.jsonnet',
  lax05: import 'sites/lax05.jsonnet',
  lax09: import 'sites/lax09.jsonnet',
  lba01: import 'sites/lba01.jsonnet',
  lca01: import 'sites/lca01.jsonnet',
  lga01: import 'sites/lga01.jsonnet',
  lga02: import 'sites/lga02.jsonnet',
  lga03: import 'sites/lga03.jsonnet',
  lga07: import 'sites/lga07.jsonnet',
  lga09: import 'sites/lga09.jsonnet',
  lhr01: import 'sites/lhr01.jsonnet',
  lhr02: import 'sites/lhr02.jsonnet',
  lhr03: import 'sites/lhr03.jsonnet',
  lhr05: import 'sites/lhr05.jsonnet',
  lhr06: import 'sites/lhr06.jsonnet',
  lhr08: import 'sites/lhr08.jsonnet',
  lim04: import 'sites/lim04.jsonnet',
  los01: import 'sites/los01.jsonnet',
  mad01: import 'sites/mad01.jsonnet',
  mad02: import 'sites/mad02.jsonnet',
  mad03: import 'sites/mad03.jsonnet',
  mad05: import 'sites/mad05.jsonnet',
  mex02: import 'sites/mex02.jsonnet',
  mia01: import 'sites/mia01.jsonnet',
  mia03: import 'sites/mia03.jsonnet',
  mia06: import 'sites/mia06.jsonnet',
  mil01: import 'sites/mil01.jsonnet',
  mil02: import 'sites/mil02.jsonnet',
  mil03: import 'sites/mil03.jsonnet',
  mil04: import 'sites/mil04.jsonnet',
  mpm01: import 'sites/mpm01.jsonnet',
  mrs03: import 'sites/mrs03.jsonnet',
  nuq01: import 'sites/nuq01.jsonnet',
  nuq02: import 'sites/nuq02.jsonnet',
  nuq05: import 'sites/nuq05.jsonnet',
  nuq07: import 'sites/nuq07.jsonnet',
  ord01: import 'sites/ord01.jsonnet',
  ord04: import 'sites/ord04.jsonnet',
  ord05: import 'sites/ord05.jsonnet',
  ord07: import 'sites/ord07.jsonnet',
  par01: import 'sites/par01.jsonnet',
  par02: import 'sites/par02.jsonnet',
  par03: import 'sites/par03.jsonnet',
  par04: import 'sites/par04.jsonnet',
  par06: import 'sites/par06.jsonnet',
  par07: import 'sites/par07.jsonnet',
  prg01: import 'sites/prg01.jsonnet',
  prg02: import 'sites/prg02.jsonnet',
  prg06: import 'sites/prg06.jsonnet',
  scl02: import 'sites/scl02.jsonnet',
  scl04: import 'sites/scl04.jsonnet',
  scl05: import 'sites/scl05.jsonnet',
  sea01: import 'sites/sea01.jsonnet',
  sea02: import 'sites/sea02.jsonnet',
  sea05: import 'sites/sea05.jsonnet',
  sea06: import 'sites/sea06.jsonnet',
  sea07: import 'sites/sea07.jsonnet',
  sea09: import 'sites/sea09.jsonnet',
  sjc01: import 'sites/sjc01.jsonnet',
  syd01: import 'sites/syd01.jsonnet',
  syd02: import 'sites/syd02.jsonnet',
  syd04: import 'sites/syd04.jsonnet',
  syd06: import 'sites/syd06.jsonnet',
  syd07: import 'sites/syd07.jsonnet',
  trn01: import 'sites/trn01.jsonnet',
  vie01: import 'sites/vie01.jsonnet',
  wlg01: import 'sites/wlg01.jsonnet',
  yqm01: import 'sites/yqm01.jsonnet',
  yul01: import 'sites/yul01.jsonnet',
  yul02: import 'sites/yul02.jsonnet',
  yul04: import 'sites/yul04.jsonnet',
  yul05: import 'sites/yul05.jsonnet',
  yvr01: import 'sites/yvr01.jsonnet',
  ywg01: import 'sites/ywg01.jsonnet',
  yyc01: import 'sites/yyc01.jsonnet',
  yyc02: import 'sites/yyc02.jsonnet',
  yyz01: import 'sites/yyz01.jsonnet',
  yyz02: import 'sites/yyz02.jsonnet',
  yyz05: import 'sites/yyz05.jsonnet',

  // Test sites.
  atl0t: import 'sites/atl0t.jsonnet',
  nuq0t: import 'sites/nuq0t.jsonnet',
};
[
  local site = retiredSites[name];
  if site.name == name then
    site
  else
    error 'Site name (%s) does not match object.name (%s)' % [name, site.name]
  for name in std.objectFields(retiredSites)
]
