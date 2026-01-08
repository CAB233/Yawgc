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
        inet4_range: '28.0.0.0/8',
        inet6_range: '2001:2::/48',
      },
    ],
  },
}
