function(platform) {
  route: {
    rules: [
      {
        clash_mode: '直连',
        outbound: '直连',
      },
      {
        clash_mode: '全局',
        outbound: '代理',
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
              'domain/cn',
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
          'domain/game-download',
          'domain/cn',
        ],
        outbound: '直连',
      },
      {
        rule_set: [
          'domain/!cn',
        ],
        outbound: '代理',
      },
      {
        action: 'resolve',
      },
      {
        rule_set: [
          'ip/cn',
        ],
        outbound: '直连',
      },
      {
        ip_is_private: true,
        outbound: '直连',
      },
    ],
  },
}
