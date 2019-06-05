local default = {
  index: error 'Must override experiment index',
  ipv6_enabled: true,
  flat_hostname: false,
  cloud_enabled: false,
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
    index: 3,
    name: 'npad.iupui',
    rsync_modules: ['sidestream', 'npad', 'paris-traceroute'],
  },
  default {
    index: 5,
    name: 'diff.mlab',
  },
  default {
    index: 6,
    name: 'geoloc4.uw',
    ipv6_enabled: false,
  },
  default {
    index: 8,
    name: 'ispmon.samknows',
  },
  default {
    index: 9,
    name: 'bismark.gt',
    ipv6_enabled: false,
  },
  default {
    index: 10,
    name: 'neubot.mlab',
    rsync_modules: ['neubot'],
  },
  default {
    index: 11,
    name: '1.michigan',
  },
  default {
    index: 12,
    name: 'utility.mlab',
    rsync_modules: ['utilization', 'switch'],
  },
]
