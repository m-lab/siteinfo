local default = {
  index: error 'Must override experiment index',
  ipv6_enabled: true,
  flat_hostname: false,
  cloud_enabled: false,
  rsync_modules: [],
};

[
  default {
    index: 2,
    name: 'ndt.iupui',
    flat_hostname: true,
    cloud_enabled: true,
    rsync_modules: ['ndt'],
  },
  default {
    index: 5,
    name: 'wehe',
  },
  default {
    index: 8,
    name: 'ispmon.samknows',
  },
  default {
    index: 10,
    flat_hostname: true,
    name: 'neubot.mlab',
    rsync_modules: ['neubot'],
  },
]
