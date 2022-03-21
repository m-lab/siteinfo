local test = import 'jsonnetunit/test.libsonnet';
local defaultSite = import 'sites/_default_virtual.jsonnet';
local version = std.extVar('version');

// A v4-only virtual site with 1 node
local v4Site1Node = defaultSite {
  name: 'mck0t',
  annotations+: {
    provider: 'gcp',
    type: 'virtual',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '10.0.0.5/32',
        },
      },
      project: 'mlab-sandbox',
    },
  },
};
// A v4-only virtual site with 2 nodes
local v4Site2Nodes = defaultSite {
  name: 'mck0t',
  annotations+: {
    provider: 'gcp',
    type: 'virtual',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '10.0.0.22/32',
        },
      },
      project: 'mlab-sandbox',
    },
    mlab3: {
      disk: 'pd-standard',
      iface: 'ens4',
      model: 'e1-highcpu-6',
      network: {
        ipv4: {
          address: '172.16.0.10/32',
        },
        ipv6: {
          address: null,
        },
      },
      project: 'mlab-sandbox',
    },
  },
};
// A dual stack virtual site with 2 nodes.
local v4v6Site2Nodes = defaultSite {
  name: 'mck0t',
  annotations+: {
    provider: 'gcp',
    type: 'virtual',
  },
  machines+: {
    mlab1+: {
      network+: {
        ipv4+: {
          address: '10.0.0.55/32',
        },
        ipv6+: {
          address: '2600:1900:2100:2e::35/128',
        },
      },
      project: 'mlab-sandbox',
    },
    mlab4: {
      disk: 'pd-ssd',
      iface: 'ens4',
      model: 'n1-highcpu-4',
      network: {
        ipv4: {
          address: '192.168.0.20/32',
        },
        ipv6: {
          address: '2600:1900:54:e96::99/128',
        },
      },
      project: 'mlab-sandbox',
    },
  },
};

test.suite({
  test_v4_one_node: {
    actual: [
      v4Site1Node.Machine('mlab1').v4.ip,
      v4Site1Node.MachineIndex('mlab1'),
      v4Site1Node.NetworkPrefix('v4'),
      v4Site1Node.NetworkPrefix('v6'),
      v4Site1Node.Machine('mlab1').Record(),
      v4Site1Node.Machine('mlab1').Record('v4'),
      v4Site1Node.Machine('mlab1').Hostname(),
      v4Site1Node.Machine('mlab1').Hostname('v4'),
    ],
    expect: [
      '10.0.0.5',
      1,
      '',
      '',
      if version == 'v1' then 'mlab1.mck0t' else 'mlab1-mck0t',
      if version == 'v1' then 'mlab1v4.mck0t' else 'mlab1v4-mck0t',
      if version == 'v1' then 'mlab1.mck0t.measurement-lab.org' else 'mlab1-mck0t.mlab-sandbox.measurement-lab.org',
      if version == 'v1' then 'mlab1v4.mck0t.measurement-lab.org' else 'mlab1v4-mck0t.mlab-sandbox.measurement-lab.org',
    ],
  },
  test_v4_two_nodes: {
    actual: [
      v4Site2Nodes.Machine('mlab1').v4.ip,
      v4Site2Nodes.Machine('mlab3').v4.ip,
    ],
    expect: [
      '10.0.0.22',
      '172.16.0.10',
    ],
  },
  test_v4v6_two_nodes: {
    actual: [
      v4v6Site2Nodes.Machine('mlab1').v6.ip,
      v4v6Site2Nodes.Machine('mlab4').v6.ip,
    ],
    expect: [
      '2600:1900:2100:2e::35',
      '2600:1900:54:e96::99',
    ],
  },
  test_experiment: {
    actual: [
      v4Site1Node.Experiment('mlab1', { index: 1, name: 'fake.exp', cloud_enabled: true }).v4.ip,
      v4Site2Nodes.Experiment('mlab3', { index: 1, name: 'fake.exp', cloud_enabled: true }).v4.ip,
      v4v6Site2Nodes.Experiment('mlab1', { index: 1, name: 'fake.exp', cloud_enabled: true }).v6.ip,
      v4v6Site2Nodes.Experiment('mlab1', { index: 1, name: 'fake.exp', cloud_enabled: false }),
      v4v6Site2Nodes.Experiment('mlab4', { index: 1, name: 'fake.exp', cloud_enabled: true }).Record(),
      v4v6Site2Nodes.Experiment('mlab1', { index: 1, name: 'fake.exp', cloud_enabled: true }).Record('v4'),
      v4v6Site2Nodes.Experiment('mlab4', { index: 1, name: 'fake.exp', cloud_enabled: true }).Hostname(),
      v4v6Site2Nodes.Experiment('mlab1', { index: 1, name: 'fake.exp', cloud_enabled: true }).Hostname('v6'),
    ],
    expect: [
      '10.0.0.5',
      '172.16.0.10',
      '2600:1900:2100:2e::35',
      null,
      if version == 'v1' then 'fake.exp.mlab4.mck0t' else 'fake-exp-mlab4-mck0t',
      if version == 'v1' then 'fake.exp.mlab1v4.mck0t' else 'fake-exp-mlab1v4-mck0t',
      if version == 'v1' then 'fake.exp.mlab4.mck0t.measurement-lab.org' else 'fake-exp-mlab4-mck0t.mlab-sandbox.measurement-lab.org',
      if version == 'v1' then 'fake.exp.mlab1v6.mck0t.measurement-lab.org' else 'fake-exp-mlab1v6-mck0t.mlab-sandbox.measurement-lab.org',
    ],
  },
  test_machine_network: {
    actual: [
      v4v6Site2Nodes.Machine('mlab4').Network(),
    ],
    expect: [
      { Network: { IPv4: '192.168.0.20/32', IPv6: '2600:1900:54:e96::99/128' } },
    ],
  },
})
