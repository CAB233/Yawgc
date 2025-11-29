function(platform) {
  dns: {
    servers: [
      {
        tag: 'dns-google',
        type: 'tls',
        server: '8.8.8.8',
        detour: '代理',
      },
      {
        tag: 'dns-ali',
        type: 'h3',
        server: '223.5.5.5',
      },
      {
        tag: 'dns-local',
        type: if (platform == 'android') then 'local' else 'dhcp',
      },
      // https://developer.chrome.com/blog/local-network-access
      // Use the address belongs to these "local" networks
      // (https://wicg.github.io/local-network-access/#non-public-ip-address-blocks)
      // will make permission warning in Chrome.
      // To avoid user agreeing plenty of permissions, we decide to use these new address.
      {
        tag: 'dns-fakeip',
        type: 'fakeip',
        inet4_range: '198.51.100.0/24',
        inet6_range: '2001:2::/48',
      },
    ],
  },
}
