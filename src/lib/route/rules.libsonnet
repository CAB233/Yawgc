function(platform) {
  route: {
    rules: [] + (
      // for some apps like qBittorrent
      if (platform != 'linux-desktop') then [] else [
        {
          inbound: 'socks-in',
          outbound: '直连',
        },
      ]
    ) + [
      // pre-match like, need global fakeip
      {
        // reject IPv6 traffic when no real IPv6 is available
        type: 'logical',
        mode: 'and',
        rules: [
          {
            ip_version: 6,
          },
          {
            default_interface_address: '2000::/3',
            invert: true,
          },
        ],
        action: 'reject',
      },
      {
        // https://github.com/telegramdesktop/tdesktop/issues/28453
        rule_set: 'ip/telegram',
        port: 80,
        action: 'reject',
        method: 'drop',
      },
      {
        port: 53,
        action: 'hijack-dns',
      },
      {
        clash_mode: '直连',
        outbound: '直连',
      },
      {
        clash_mode: '全局',
        outbound: '代理',
      },
      {
        port: 123,
        network: 'udp',
        outbound: '直连',
      },
      {
        rule_set: [
          'domain/game-download',
          'domain/china-list',
        ],
        outbound: '直连',
      },
      {
        rule_set: [
          'domain/cdn',
          'domain/stream',
          'domain/telegram',
          'domain/download',
          'domain/microsoft',
          'domain/ai',
          'domain/global',
        ],
        port: 443,
        network: 'udp',
        action: 'reject',
      },
      {
        rule_set: [
          'domain/cdn',
          'domain/stream',
          'domain/telegram',
          'domain/download',
          'domain/microsoft',
          'domain/ai',
          'domain/global',
        ],
        outbound: '代理',
      },
      {
        action: 'resolve',
      },
      {
        rule_set: 'ip/cn',
        outbound: '直连',
      },
      {
        ip_is_private: true,
        outbound: '直连',
      },
      {
        port: 443,
        network: 'udp',
        action: 'reject',
      },
    ],
  },
}
