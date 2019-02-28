local default = {
  index: error 'Must override experiment index',
  ipv6_enabled: false,
  flat_hostname: false,
  cloud_enabled: false,
};

[
  default {
    index: 2,
    name: 'ndt.iupui',
    ipv6_enabled: true,
    flat_hostname: true,
    cloud_enabled: true,
  },
  default {
    index: 5,
    name: 'diff.mlab',
    ipv6_enabled: true,
  },
  default {
    index: 6,
    name: 'geoloc4.uw',
  },
  default {
    index: 8,
    name: 'ispmon.samknows',
    ipv6_enabled: true,
  },
  default {
    index: 9,
    name: 'bismark.gt',
  },
  default {
    index: 10,
    name: 'neubot.mlab',
    ipv6_enabled: true,
  },
  default {
    index: 11,
    name: '1.michigan',
    ipv6_enabled: true,
  },
  default {
    index: 12,
    name: 'utility.mlab',
    ipv6_enabled: true,
  },
]
