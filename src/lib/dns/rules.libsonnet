{
  dns: {
    rules: [
      {
        // reject AAAA when real IPv6 is unavailable
        type: 'logical',
        mode: 'and',
        rules: [
          {
            query_type: 'AAAA',
          },
          {
            default_interface_address: '2000::/3',
            invert: true,
          },
        ],
        action: 'reject',
      },
      {
        clash_mode: '直连',
        server: 'dns-local',
      },
      {
        query_type: [
          'SVCB',
          'HTTPS',
        ],
        action: 'predefined',
        rcode: 'NOERROR',
      },
      {
        rule_set: 'domain/ads',
        action: 'predefined',
        answer: [
          '*. 3600 IN A 127.0.0.1',
          '*. 3600 IN AAAA ::1',
        ],
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
        clash_mode: '全局',
        server: 'dns-google',
      },
      {
        rule_set: 'domain/china-list',
        // Now only for Steam download
        // https://www.dogfight360.com/blog/knowledge-base/fix_steamdl_region/
        domain_suffix: [
          '.cm.steampowered.com',
          '.steamserver.net',
        ],
        server: 'dns-local',
      },
      {
        // Ref: https://crzidea.com/#/article/introducing-crzidea-doh
        type: 'logical',
        mode: 'and',
        rules: [
          {
            rule_set: 'domain/geolocation-!cn',
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
