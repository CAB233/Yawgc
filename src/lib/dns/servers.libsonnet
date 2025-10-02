function(platform) {
  dns: {
    servers: [
      //{
      //  tag: 'dns-google',
      //  type: 'https',
      //  server: '8.8.8.8',
      //  detour: '代理',
      //},
      {
        tag: 'dns-ali',
        type: 'h3',
        server: '223.5.5.5',
      },
      {
        tag: 'dns-local',
        type: if (platform == 'android') then 'local' else 'dhcp',
      },
      {
        tag: 'dns-fakeip',
        type: 'fakeip',
        inet4_range: '198.18.0.0/15',
        inet6_range: 'fc00::/18',
      },
    ],
  },
}
