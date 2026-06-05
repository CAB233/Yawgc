function(platform) {
  dns: {
    servers: [
      {
        // For lan domains
        tag: 'dns-local',
        type: 'local',
      },
      {
        // For cn domains
        tag: 'dns-cn',
        type: 'h3',
        server: '223.6.6.6',
      },
      {
        // For unknown domains
        tag: 'dns-pure',
        type: 'https',
        server: '8.8.8.8',
      },
      {
        // For final resolution
        tag: 'dns-final',
        type: 'https',
        server: '1.1.1.1',
        detour: '代理',
      },
      {
        // https://developer.chrome.com/blog/local-network-access
        // Use the address belongs to these "local" networks
        // (https://wicg.github.io/local-network-access/#non-public-ip-address-blocks)
        // will make permission warning in Chrome.
        // To avoid user agreeing plenty of permissions, we decide to use these new address.
        tag: 'dns-fakeip',
        type: 'fakeip',
        inet4_range: '28.0.0.0/8',
        inet6_range: '2001:2::/48',
      },
    ],
  },
}
