function(platform) {
  route: {
    rules: [
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
    ] + (
      // for some apps like qBittorrent
      if (platform != 'linux-desktop') then [] else [
        {
          inbound: 'socks-in',
          outbound: '直连',
        },
      ]
    ) + [
      {
        // https://github.com/telegramdesktop/tdesktop/issues/28453
        rule_set: 'ip/telegram',
        port: 80,
        action: 'reject',
        method: 'drop',
      },
      {
        rule_set: 'domain/ads',
        action: 'reject',
      },
    ] + (
      // pre-matching before sniffing and requires tun and fakeip
      if (!std.extVar('sniff')) then [] else [
        {
          action: 'sniff',
        },
      ]
    ) + [
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
        rule_set: 'domain/china-list',
        // Now only for Steam download
        // https://www.dogfight360.com/blog/knowledge-base/fix_steamdl_region/
        domain_suffix: [
          '.cm.steampowered.com',
          '.steamserver.net',
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
