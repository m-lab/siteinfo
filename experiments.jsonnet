local default = {
  index: error 'Must override experiment index',
  ipv6_enabled: true,
  cloud_enabled: false,
};

[
  default {
    index: 1,
    name: 'demo1',
  },
  default {
    index: 2,
    name: 'ndt.iupui',
    cloud_enabled: true,
  },
  default {
    index: 2,
    cloud_enabled: true,
    name: 'ndt',
  },
  default {
    index: 3,
    name: 'revtr',
  },
  default {
    index: 5,
    name: 'wehe',
  },
  default {
    index: 10,
    name: 'neubot.mlab',
  },
  default {
    index: 10,
    name: 'neubot',
  },
]
