{
  route: {
    rules: [
      {
        rule_set: 'geoip-telegram',
        invert: true,
        action: 'sniff',
        sniffer: [
          'dns',
          'http',
          'tls',
          'quic',
        ],
      },
      {
        port: 53,
        protocol: 'dns',
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
        rule_set: 'geosite-reject',
        action: 'reject',
      },
      {
        rule_set: 'geoip-telegram',
        port: 80,
        action: 'reject',
        method: 'drop',
      },
      {
        port: 123,
        network: 'udp',
        outbound: '直连',
      },
      {
        rule_set: 'geosite-direct',
        outbound: '直连',
      },
      {
        rule_set: 'geosite-proxy',
        protocol: 'quic',
        action: 'reject',
      },
      {
        rule_set: 'geosite-proxy',
        outbound: '代理',
      },
      {
        action: 'resolve',
      },
      {
        rule_set: 'geoip-cn',
        outbound: '直连',
      },
      {
        ip_is_private: true,
        outbound: '直连',
      },
      {
        protocol: 'quic',
        action: 'reject',
      },
    ],
  },
}
