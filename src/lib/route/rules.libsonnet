function(platform) {
  route: {
    rules: [
      {
        clash_mode: '直连',
        outbound: '直连',
      },
      {
        rule_set: 'ip/telegram',
        invert: true,
        action: 'sniff',
        sniffer: [
          'dns',
          'http',
          'tls',
        ],
      },
      {
        port: 53,
        protocol: 'dns',
        action: 'hijack-dns',
      },
      {
        type: 'logical',
        mode: 'and',
        rules: [
          {
            network: 'udp',
            port: 443,
          },
          {
            rule_set: [
              'domain/apple_cdn',
              'domain/microsoft_cdn',
              'domain/game-download',
              'domain/apple_cn',
              'domain/domestic',
              'domain/direct',
            ],
            invert: true,
          },
        ],
        action: 'reject',
      },
      {
        rule_set: [
          'domain/reject',
          'domain/reject_extra',
        ],
        action: 'reject',
      },
      {
        rule_set: 'domain/reject-no-drop',
        action: 'reject',
        no_drop: true,
      },
    ] + (
      // Android Telegram blocking rules
      if (platform != 'android') then [] else [
        {
          package_name: 'xyz.nextalone.nagram',
          port: 80,
          action: 'reject',
          method: 'drop',
        },
      ]
    ) + (
      // Linux Telegram blocking rules
      if (platform != 'linux-desktop') then [] else [
        {
          process_name: 'Telegram',
          port: 80,
          action: 'reject',
          method: 'drop',
        },
      ]
    ) + [
      {
        port: 123,
        network: 'udp',
        outbound: '直连',
      },
      {
        rule_set: [
          'domain/apple_cdn',
          'domain/microsoft_cdn',
          'domain/game-download',
          'domain/apple_cn',
          'domain/direct',
        ],
        outbound: '直连',
      },
      {
        rule_set: [
          'domain/cdn',
          'domain/telegram',
          'domain/microsoft',
          'domain/download',
          'domain/global',
        ],
        outbound: '代理',
      },
      {
        action: 'resolve',
      },
      {
        rule_set: [
          'ip/domestic',
          'ip/china_ip',
          'ip/china_ip_ipv6',
          'ip/lan',
        ],
        outbound: '直连',
      },
    ],
  },
}
