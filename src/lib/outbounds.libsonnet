{
  outbounds: [
    {
      type: 'direct',
      tag: '直连',
    },
    {
      type: 'selector',
      tag: '代理',
      default: '自动',
      interrupt_exist_connections: true,
      outbounds: [
        '自动',
      ],
    },
    {
      type: 'urltest',
      tag: '自动',
      url: 'http://cp.cloudflare.com',
      outbounds: [],
    },
  ],
}
