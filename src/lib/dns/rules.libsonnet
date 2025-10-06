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
        domain: ['lancache.steamcontent.com'],
        domain_suffix: ['edu.cn'],
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
      // Waiting for `ip_accept_empty`
      // https://github.com/SagerNet/sing-box/issues/3418
      {
        rule_set: [
          'domain/apple_cdn',
          'domain/microsoft_cdn',
          'domain/game-download',
          'domain/apple_cn',
          'domain/domestic',
        ],
        action: 'route-options',
        rule_set_ip_cidr_accept_empty: true,
        disable_cache: true,
      },
      // Must be resolved in CN. ===>
      {
        rule_set: [
          'domain/apple_cdn',
          'domain/microsoft_cdn',
          'domain/game-download',
          'domain/apple_cn',
          'domain/domestic',
        ],
        server: 'dns-local',
        ip_accept_any: true,
      },
      {
        rule_set: [
          'domain/apple_cdn',
          'domain/microsoft_cdn',
          'domain/game-download',
          'domain/apple_cn',
          'domain/domestic',
        ],
        server: 'dns-ali',
        strategy: 'ipv4_only',
      },
      // <===
      //
      // Other domains shall be resolved in CN as a priority.
      // The premise is that even if it is the result of pollution, it originates from foreign IP.
      {
        rule_set: [
          'ip/domestic',
          'ip/china_ip',
          'ip/china_ip_ipv6',
        ],
        server: 'dns-ali',
      },
    ],
  },
}
