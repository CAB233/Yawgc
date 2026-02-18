{
  dns: {
    rules: [
      {
        clash_mode: '直连',
        server: 'dns-local',
      },
      {
        query_type: 'HTTPS',
        action: 'predefined',
        rcode: 'NOERROR',
      },
      {
        clash_mode: '全局',
        server: 'dns-google',
      },
      {
        // Must realip
        rule_set: [
          'domain/private',
          'domain/connectivity-check',
        ],
        server: 'dns-local',
      },
      {
        query_type: [
          'A',
          'AAAA',
        ],
        rewrite_ttl: 1,
        server: 'dns-fakeip',
      },
      {
        rule_set: [
          'domain/game-download',
          'domain/china-list',
        ],
        server: 'dns-local',
      },
      {
        // Ref: https://crzidea.com/#/article/introducing-crzidea-doh
        type: 'logical',
        mode: 'and',
        rules: [
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
            invert: true,
          },
          {
            rule_set: 'ip/cn',
          },
        ],
        server: 'dns-google',
        client_subnet: '42.159.128.1/32',
      },
    ],
  },
}
