local test = import 'jsonnetunit/test.libsonnet';
local defaultSite = import 'sites/_default.jsonnet';
local version = std.extVar('version');

// A standard v4 and v6 enabled site.
local v4v6Site = defaultSite {
  name: 'mck0t',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: { prefix: '192.168.1.64/26' },
    ipv6+: { prefix: '2001:1900:2100:2d::/64' },
  },
};
// Provide an explicit v6 gateway.
local v6GwSite = defaultSite {
  name: 'mck0t',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: { prefix: '192.168.1.64/26' },
    ipv6+: {
      prefix: '2001:1900:2100:2d::/64',
      gateway: '2001:1900:2100:2d::129',
    },
  },
};
// A v4-only site.
local v4Site = defaultSite {
  name: 'mck0t',
  annotations+: {
    type: 'physical',
  },
  network+: {
    ipv4+: { prefix: '192.168.1.64/26' },
    ipv6: { prefix: null },
  },
};

test.suite({
  test_v4_net_offset:
    {
      actual: [
        v4v6Site._v4_net_offset('192.168.1.64/26'),
        v4v6Site._v4_net_offset('192.168.1.66/32'),
      ],
      expect: [
        64,
        66,
      ],
    },
  test_v4_net_prefix:
    {
      actual: [
        v4v6Site._v4_net_prefix('192.168.1.64/26'),
        v4v6Site._v4_net_prefix('192.168.1.66/32'),
      ],
      expect: [
        '192.168.1',
        '192.168.1',
      ],
    },
  test_net_subnet:
    {
      actual: [
        v4v6Site._net_subnet('192.168.1.64/26'),
        v4v6Site._net_subnet('192.168.1.66/32'),
      ],
      expect: [
        26,
        32,
      ],
    },
  test_v4_netmask:
    {
      actual: [
        v4v6Site._v4_netmask(26),
        v4v6Site._v4_netmask(27),
        v4v6Site._v4_netmask(31),
        v4v6Site._v4_netmask(32),
      ],
      expect: [
        '255.255.255.192',
        '255.255.255.224',
        '255.255.255.254',
        '255.255.255.255',
      ],
    },
  test_s1: {
    actual: v4v6Site.Switch().v4.ip,
    expect: '192.168.1.66',
  },
  test_s1_record: {
    actual: v4v6Site.Switch().Record(),
    expect: if version == 'v1' then 's1.mck0t' else 's1-mck0t',
  },
  test_drac: {
    actual: [
      v4v6Site.DRAC('mlab1').v4.ip,
      v4v6Site.DRAC('mlab2').v4.ip,
      v4v6Site.DRAC('mlab3').v4.ip,
      v4v6Site.DRAC('mlab4').v4.ip,
    ],
    expect: [
      '192.168.1.68',
      '192.168.1.69',
      '192.168.1.70',
      '192.168.1.71',
    ],
  },
  test_drac_record: {
    actual: [
      v4v6Site.DRAC('mlab1').Record(),
      v4v6Site.DRAC('mlab2').Record(),
      v4v6Site.DRAC('mlab3').Record(),
      v4v6Site.DRAC('mlab4').Record(),
    ],
    expect: [
      if version == 'v1' then 'mlab1d.mck0t' else 'mlab1d-mck0t',
      if version == 'v1' then 'mlab2d.mck0t' else 'mlab2d-mck0t',
      if version == 'v1' then 'mlab3d.mck0t' else 'mlab3d-mck0t',
      if version == 'v1' then 'mlab4d.mck0t' else 'mlab4d-mck0t',
    ],
  },
  test_machine_v4: {
    actual: [
      v4v6Site.Machine('mlab2').v4.ip,
      v4v6Site.Machine('mlab2').v4.netmask,
      v4v6Site.Machine('mlab2').v4.gateway,
      v4v6Site.Machine('mlab2').v4.broadcast,
      v4v6Site.Machine('mlab2').Record(),
      v4v6Site.Machine('mlab2').Record('v4'),
    ],
    expect: [
      '192.168.1.86',
      '255.255.255.192',
      '192.168.1.65',
      '192.168.1.127',
      if version == 'v1' then 'mlab2.mck0t' else 'mlab2-mck0t',
      if version == 'v1' then 'mlab2v4.mck0t' else 'mlab2v4-mck0t',
    ],
  },
  test_machine_v6_gateway: {
    actual: [
      v4v6Site.Machine(2).v6.gateway,
      v6GwSite.Machine(2).v6.gateway,
    ],
    expect: [
      '2001:1900:2100:2d::1',
      '2001:1900:2100:2d::129',
    ],
  },
  test_machine_v6_ip: {
    actual: [
      v4Site.Machine('mlab2').v6.ip,
      v4v6Site.Machine('mlab2').v6.ip,
    ],
    expect: [
      '',
      '2001:1900:2100:2d::86',
    ],
  },
  test_machine_v6_record: {
    actual: [
      v4v6Site.Machine('mlab1').Record('v6'),
      v4v6Site.Machine('mlba2').Record('v6'),
    ],
    expect: [
      if version == 'v1' then 'mlab1v6.mck0t' else 'mlab1v6-mck0t',
      if version == 'v1' then 'mlab2v6.mck0t' else 'mlab2v6-mck0t',
    ],
  },
  test_experiment_v4: {
    actual: [
      v4v6Site.Experiment('mlab2', { index: 1, name: 'fake.exp' }).v4.ip,
      v4v6Site.Experiment('mlab2', { index: 1, name: 'fake.exp' }).Record(),
      v4v6Site.Experiment('mlab2', { index: 1, name: 'fake.exp' }).Record('v4'),
    ],
    expect: [
      '192.168.1.87',
      if version == 'v1' then 'fake.exp.mlab2.mck0t' else 'fake-exp-mlab2-mck0t',
      if version == 'v1' then 'fake.exp.mlab2v4.mck0t' else 'fake-exp-mlab2v4-mck0t',
    ],
  },
  test_experiment_v6: {
    actual: [
      v4v6Site.Experiment('mlab2', { index: 1, name: 'fake.exp' }).v6.ip,
      v4v6Site.Experiment('mlab2', { index: 1, name: 'fake.exp' }).Record(),
      v4v6Site.Experiment('mlab2', { index: 1, name: 'fake.exp' }).Record('v6'),
      v4Site.Experiment('mlab1', { index: 1, name: 'fake.exp' }).v6.ip,
    ],
    expect: [
      '2001:1900:2100:2d::87',
      if version == 'v1' then 'fake.exp.mlab2.mck0t' else 'fake-exp-mlab2-mck0t',
      if version == 'v1' then 'fake.exp.mlab2v6.mck0t' else 'fake-exp-mlab2v6-mck0t',
      '',
    ],
  },
  test_prefixes: {
    actual: [
      v4v6Site.NetworkCIDR('v4', 'mlab1'),
      v4v6Site.NetworkCIDR('v6', 'mlab1'),
    ],
    expect: [
      '192.168.1.64/26',
      '2001:1900:2100:2d::/64',
    ],
  },
  test_machine_index: {
    actual: [
      v4Site.MachineIndex('mlab1'),
      v4Site.MachineIndex('mlab3'),
    ],
    expect: [
      1,
      3,
    ],
  },
})
