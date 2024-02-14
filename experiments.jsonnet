local default = {
  index: error 'Must override experiment index',
  ipv6_enabled: true,
  cloud_enabled: false,
};

[
  default {
    index: 1,
    name: 'msak',
  },
  default {
    index: 2,
    cloud_enabled: true,
    name: 'ndt',
  },
  default {
    index: 2,
    name: 'ndt.iupui',
    cloud_enabled: true,
  },
  default {
    index: 3,
    name: 'revtr',
  },
  default {
    index: 4,
    name: 'demo4',
  },
  default {
    index: 5,
    name: 'wehe',
  },
  default {
    index: 6,
    name: 'demo6',
  },
  default {
    index: 7,
    name: 'demo7',
  },
  default {
    index: 8,
    name: 'demo8',
  },
  default {
    index: 9,
    name: 'demo9',
  },
  default {
    index: 10,
    name: 'neubot',
  },
  default {
    index: 10,
    name: 'neubot.mlab',
  },
  default {
    index: 11,
    name: 'demo11',
  },
  default {
    index: 12,
    name: 'demo12',
  },
]
