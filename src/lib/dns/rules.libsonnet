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

      // Must realip
      {
        domain: ['lancache.steamcontent.com'],
        domain_suffix: ['edu.cn'],
        rule_set: 'geosite-private',
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

      // Must be resolved in CN.
      {
        rule_set: [
          'domain/game-download',
          'geosite-geolocation-cn',
        ],
        server: 'dns-local',
        ip_accept_any: true,
      },
      {
        rule_set: [
          'domain/game-download',
          'geosite-geolocation-cn',
        ],
        server: 'dns-ali',
        strategy: 'ipv4_only',
      },

      // Ref: https://crzidea.com/#/article/introducing-crzidea-doh
      {
        rule_set: [
          'geoip-cn',
        ],
        server: 'dns-google',
        client_subnet: '42.159.128.1/32',
      },
    ],
  },
}
