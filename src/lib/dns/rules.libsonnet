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
      // Must realip
      {
        domain: ['lancache.steamcontent.com', 'ntp.ntsc.ac.cn'],
        rule_set: 'domain/direct',
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
          'domain/apple_cdn',
          'domain/microsoft_cdn',
          'domain/game-download',
          'domain/apple_cn',
          'domain/domestic',
        ],
        clash_mode: '增强',
        server: 'dns-ali',
        strategy: 'ipv4_only',
      },
      {
        rule_set: [
          'domain/apple_cdn',
          'domain/microsoft_cdn',
          'domain/game-download',
          'domain/apple_cn',
          'domain/domestic',
        ],
        server: 'dns-local',
      },
      {
        client_subnet: '42.159.128.1/32',
        action: 'route-options',
      },
    ],
  },
}
